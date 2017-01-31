//
//  Graph.swift
//  AlgoExplorer
//
//  Created by Bhagat Singh on 1/31/17.
//  Copyright © 2017 com.bhagat_singh. All rights reserved.
//

import Foundation

class Graph{
    
    static let floydWarshall = "for i = 1 to N\n" +
        "for j = 1 to N\n" +
        "if there is an edge from i to j\n" +
        " dist[0][i][j] = the length of the edge from i to j\n" +
        "else\n" +
        " dist[0][i][j] = INFINITY\n" +
        "\n" +
        "for k = 1 to N\n" +
        " for i = 1 to N\n" +
        "  for j = 1 to N\n" +
        "   dist[k][i][j] = min(dist[k-1][i][j], dist[k-1][i][k] + dist[k-1][k][j])"
    
    static let dijkstraAlgo = "function Dijkstra(Graph, source):\n" +
    "for each vertex v in Graph: // Initialization\n" +
    " dist[v] := infinity // initial distance from source to vertex v is set to infinite\n" +
    " previous[v] := undefined // Previous node in optimal path from source\n" +
    " dist[source] := 0 // Distance from source to source\n" +
    " Q := the set of all nodes in Graph \t// all nodes in the graph are unoptimized - thus are in Q\n" +
    "while Q is not empty: // main loop\n" +
    " tu := node in Q with smallest dist[ ]\n" +
    " remove u from Q\n" +
    " for each neighbor v of u: // where v has not yet been removed from Q.\n" +
    "  alt := dist[u] + dist_between(u, v)\n" +
    "  if alt < dist[v]// Relax (u,v)\n" +
    "  dist[v] := alt\n" +
    "  previous[v] := u\n" +
    "return previous[ ]"
}
