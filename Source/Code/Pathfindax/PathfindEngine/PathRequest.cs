using System;
using Pathfindax.Nodes;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Threading;
using Pathfindax.Paths;

namespace Pathfindax.PathfindEngine
{
	public static class PathRequest
	{
		public static PathRequest<TPath> Create<TPath>(IPathfinder<TPath> pathfinder, IDefinitionNode start, IDefinitionNode end, PathfindaxCollisionCategory collisionCategory = PathfindaxCollisionCategory.None, byte agentSize = 1)
			where TPath : IPath
		{
			return new PathRequest<TPath>(pathfinder, start, end, collisionCategory, agentSize);
		}

		public static PathRequest<TPath> Create<TPath>(IDefinitionNode start, IDefinitionNode end, PathfindaxCollisionCategory collisionCategory = PathfindaxCollisionCategory.None, byte agentSize = 1)
			where TPath : IPath
		{
			return new PathRequest<TPath>(start, end, collisionCategory, agentSize);
		}
	}

	/// <summary>
	/// A class with all the information needed to calculate a path from A to B.
	/// </summary>
	public class PathRequest<TPath> : IPathRequest
		where TPath : IPath
	{
		/// <summary>
		/// The node start node.
		/// </summary>
		public IDefinitionNode PathStart { get; }

		/// <summary>
		/// The end node.
		/// </summary>
		public IDefinitionNode PathEnd { get; }

		/// <summary>
		/// The size of the agent. 1 is the default value meaning that the agent occupies only 1 node.
		/// </summary>
		public byte AgentSize { get; }

		/// <summary>
		/// The CollisionCategory. Multiple categories can be active at the same time.
		/// </summary>
		public PathfindaxCollisionCategory CollisionCategory { get; }

		/// <summary>
		/// The callback that will be called after the pathfinder finds a path or cannot find one.
		/// </summary>
		private readonly List<Action> _callbacks = new List<Action>();

		/// <summary>
		/// The calculated path. Will be null unless the <see cref="Status"/> is equal to <see cref="PathRequestStatus.Solved"/>
		/// </summary>
		public TPath CompletedPath { get; private set; }

		IPath IPathRequest.CompletedPath => CompletedPath;

		/// <summary>
		/// The status of this <see cref="PathRequest"/>. See <see cref="PathRequestStatus"/> for more info.
		/// </summary>
		public PathRequestStatus Status { get; private set; }

		/// <summary>
		/// Will be set when the <see cref="Status"/> is equal or greater than <see cref="PathRequestStatus.Solved"/>.
		/// </summary>
		public WaitHandle WaitHandle => _manualResetEvent;
		private readonly ManualResetEvent _manualResetEvent = new ManualResetEvent(false);

		/// <summary>
		/// Creates a new <see cref="PathRequest"/>
		/// </summary>
		/// <param name="pathfinder"></param>
		/// <param name="start">The worldcoordinates of the start of the path</param>
		/// <param name="end">The worldcoordinates of the end of the path</param>
		/// <param name="agentSize">The size of the agent in nodes</param>
		/// <param name="collisionCategory">The collision layers that this agent cannot cross</param>
		public PathRequest(IPathfinder<TPath> pathfinder, IDefinitionNode start, IDefinitionNode end, PathfindaxCollisionCategory collisionCategory = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			PathStart = start;
			PathEnd = end;
			AgentSize = agentSize;
			CollisionCategory = collisionCategory;
			StartSolvePath(pathfinder);
		}

		/// <summary>
		/// Creates a new <see cref="PathRequest"/>
		/// </summary>
		/// <param name="start">The worldcoordinates of the start of the path</param>
		/// <param name="end">The worldcoordinates of the end of the path</param>
		/// <param name="agentSize">The size of the agent in nodes</param>
		/// <param name="collisionCategory">The collision layers that this agent cannot cross</param>
		public PathRequest(IDefinitionNode start, IDefinitionNode end, PathfindaxCollisionCategory collisionCategory = PathfindaxCollisionCategory.None, byte agentSize = 1)
		{
			PathStart = start;
			PathEnd = end;
			AgentSize = agentSize;
			CollisionCategory = collisionCategory;
		}

		/// <summary>
		/// Starts solving the path using the provided <paramref name="pathfinder"/>.
		/// </summary>
		/// <param name="pathfinder"></param>
		public void StartSolvePath(IPathfinder<TPath> pathfinder)
		{
			if (Status != PathRequestStatus.Created) throw new InvalidOperationException("This path request is already being processed or processed");
			Status = PathRequestStatus.Solving;
			pathfinder.RequestPath(this);
		}

		/// <summary>
		/// Adds a new callback to this <see cref="PathRequest"/>. This callback will be called immediately if the path is already finished.
		/// </summary>
		/// <param name="callback">The callback that will be called when the pathfinder has solved this <see cref="PathRequest"/></param>
		public void AddCallback(Action<PathRequest<TPath>> callback)
		{
			AddCallback(() => callback.Invoke(this));
		}

		public void AddCallback(Action callback)
		{
			if (Status >= PathRequestStatus.Solved)
			{
				callback.Invoke(); //Path is already calculated so call the callback directly.
			}
			else
			{
				_callbacks.Add(callback);
			}
		}

		internal void FinishSolvePath(TPath path, bool succes)
		{
			CompletedPath = path;
			Status = succes ? PathRequestStatus.Solved : PathRequestStatus.NoPathFound;
			_manualResetEvent.Set();
		}

		internal void CallCallbacks()
		{
			foreach (var callback in _callbacks)
			{
				callback.Invoke();
			}
		}

		public PathRequestAwaiter<TPath> GetAwaiter()
		{
			return new PathRequestAwaiter<TPath>(this);
		}
	}

	public struct PathRequestAwaiter<TPath> : INotifyCompletion
		where TPath : IPath
	{
		public bool IsCompleted => _pathRequest.Status == PathRequestStatus.Solved || _pathRequest.Status == PathRequestStatus.NoPathFound;
		private readonly PathRequest<TPath> _pathRequest;

		public PathRequestAwaiter(PathRequest<TPath> pathRequest)
		{
			_pathRequest = pathRequest;
		}

		public void OnCompleted(Action continuation)
		{
			_pathRequest.AddCallback(continuation);
		}

		public TPath GetResult()
		{
			return _pathRequest.CompletedPath;
		}
	}
}
