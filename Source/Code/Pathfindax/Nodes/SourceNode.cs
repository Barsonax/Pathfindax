﻿namespace Pathfindax.Nodes
{
	public class SourceNode : ISourceNode
	{
		public DefinitionNode DefinitionNode { get; }
		public float Clearance { get; set; }

		public SourceNode(DefinitionNode definitionNode)
		{
			DefinitionNode = definitionNode;
		}

		public override string ToString()
		{
			return $"{DefinitionNode} Clearance: {Clearance}";
		}
	}
}