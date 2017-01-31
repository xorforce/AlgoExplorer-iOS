//
//  AlgorithmData.swift
//  AlgoExplorer
//
//  Created by Bhagat Singh on 1/29/17.
//  Copyright © 2017 com.bhagat_singh. All rights reserved.
//

import Foundation

class AlgorithmData{
    
    var name : String!
    var viewPhoto : String!
    var mainPhoto : String!
    var description : String!
    var program : String!
    var algorithm : String!
    var hasGif : Bool!
    var bestCase : String!
    var worstCase : String!
    var avgCase : String!
    var spaceComplexity : String!
    
    init(name: String, viewPhoto: String, mainPhoto: String, description: String, program: String, algorithm: String, hasGif: Bool, bestCase: String, worstCase: String, avgCase: String, spaceComplexity: String!){
        self.name = name
        self.algorithm = algorithm
        self.description = description
        self.mainPhoto = mainPhoto
        self.program = program
        self.viewPhoto = viewPhoto
        self.hasGif = hasGif
        self.bestCase = bestCase
        self.worstCase = worstCase
        self.avgCase = avgCase
        self.spaceComplexity = spaceComplexity
    }
    
    static func createData(info: Int) -> [AlgorithmData]{
        
        let sortData : [AlgorithmData] = [
            AlgorithmData(name: "Bubble Sort", viewPhoto: "bubblesort", mainPhoto: "bubble", description: "Bubble sort, sometimes referred to as sinking sort, is a simple sorting algorithm that repeatedly steps through the list to be sorted, compares each pair of adjacent items and swaps them if they are in the wrong order. The pass through the list is repeated until no swaps are needed, which indicates that the list is sorted. The algorithm, which is a comparison sort, is named for the way smaller or larger elements \"bubble\"to the top of the list. Although the algorithm is simple, it is too slow and impractical for most problems even when compared to insertion sort. It can be practical if the input is usually in sorted order but may occasionally have some out-of-order elements nearly in position.", program: SortingCode.bubbleSortProgram, algorithm: sorting.bubbleSortAlgo, hasGif: true, bestCase: "Ω(n)", worstCase : "O(n^2)",avgCase: "Θ(n^2)", spaceComplexity: "O(1)"),
            
            AlgorithmData(name: "Merge Sort", viewPhoto: "mergesort", mainPhoto: "mergesort_list", description: "In computer science, merge sort (also commonly spelled mergesort) is an efficient, general-purpose, comparison-based sorting algorithm. Most implementations produce a stable sort, which means that the implementation preserves the input order of equal elements in the sorted output. Mergesort is a divide and conquer algorithm that was invented by John von Neumann in 1945. A detailed description and analysis of bottom-up mergesort appeared in a report by Goldstine and Neumann as early as 1948.", program: SortingCode.mergeSortProgram, algorithm: sorting.mergeSortAlgo, hasGif : false, bestCase : "Ω(n log(n))", worstCase: "O(n log(n))",avgCase: "Θ(n log(n))", spaceComplexity: "O(n)"),
            
            AlgorithmData(name: "Insertion Sort", viewPhoto: "insertionsort", mainPhoto: "insertionsort", description: "Insertion sort is a simple sorting algorithm that builds the final sorted array (or list) one item at a time. It is much less efficient on large lists than more advanced algorithms such as quicksort, heapsort, or merge sort. ", program: SortingCode.insertionSortProgram, algorithm: sorting.insertionSortAlgo, hasGif: true, bestCase : "Ω(n)", worstCase : "O(n^2)",avgCase: "Θ(n^2)", spaceComplexity: "O(1)"),
            
            AlgorithmData(name: "Quick Sort", viewPhoto: "quicksort", mainPhoto: "quick", description: "Quicksort (sometimes called partition-exchange sort) is an efficient sorting algorithm, serving as a systematic method for placing the elements of an array in order. Developed by Tony Hoare in 1959, with his work published in 1961, it is still a commonly used algorithm for sorting. When implemented well, it can be about two or three times faster than its main competitors, merge sort and heapsort.", program: SortingCode.quickSortProgram, algorithm: sorting.quickSortAlgo, hasGif: true, bestCase : "Ω(n log(n))", worstCase : "O(n^2)",avgCase: "Θ(n log(n))", spaceComplexity: "O(log(n))"),
            
            AlgorithmData(name: "Heap Sort", viewPhoto: "heapsort", mainPhoto: "heap", description: "In computer science, heapsort is a comparison-based sorting algorithm. Heapsort can be thought of as an improved selection sort: like that algorithm, it divides its input into a sorted and an unsorted region, and it iteratively shrinks the unsorted region by extracting the largest element and moving that to the sorted region. The improvement consists of the use of a heap data structure rather than a linear-time search to find the maximum.", program: SortingCode.heapSortProgram, algorithm: sorting.heapSortAlgo, hasGif: true, bestCase : "Ω(n log(n))", worstCase : "O(n log(n))",avgCase: "Θ(n log(n))", spaceComplexity: "O(1)"),
            
            AlgorithmData(name: "Selection Sort", viewPhoto: "selectionsort", mainPhoto: "selection", description: "In computer science, selection sort is a sorting algorithm, specifically an in-place comparison sort. It has O(n2) time complexity, making it inefficient on large lists, and generally performs worse than the similar insertion sort. Selection sort is noted for its simplicity, and it has performance advantages over more complicated algorithms in certain situations, particularly where auxiliary memory is limited.", program: SortingCode.selectionSortProgram, algorithm: sorting.selectionSortAlgo, hasGif: true, bestCase : "Ω(n^2)", worstCase : "O(n^2)",avgCase: "Θ(n^2)", spaceComplexity: "O(1)")]
        
        let searchData : [AlgorithmData] = [
            AlgorithmData(name: "Binary Search", viewPhoto: "magnifier", mainPhoto: "searchingalgo", description: "In computer science, binary search, also known as half-interval search or logarithmic search, is a search algorithm that finds the position of a target value within a sorted array. Binary search compares the target value to the middle element of the array; if they are unequal, the half in which the target cannot lie is eliminated and the search continues on the remaining half until it is successful or the remaining half is empty.", program: SearchCode.binarySearchProgram, algorithm: Search.binarySearch, hasGif: true, bestCase : "O(1)", worstCase :"O(n^2)",avgCase: "O(n^2)", spaceComplexity: "O(1)"),
            
            AlgorithmData(name: "Linear Search", viewPhoto: "magnifier", mainPhoto: "searchingalgo", description: "In computer science, linear search or sequential search is a method for finding a target value within a list. It sequentially checks each element of the list for the target value until a match is found or until all the elements have been searched.", program: SearchCode.linearSearchProgram, algorithm: Search.linearSearch, hasGif: true, bestCase: "O(1)", worstCase: "O(n)",avgCase: "O(n)", spaceComplexity: "O(1)")
        ]
        
        let dpData : [AlgorithmData] = [
            AlgorithmData(name: "0-1 Knapsack", viewPhoto: "backpack", mainPhoto: "knapsack", description: "The knapsack problem or rucksack problem is a problem in combinatorial optimization: Given a set of items, each with a weight and a value, determine the number of each item to include in a collection so that the total weight is less than or equal to a given limit and the total value is as large as possible. It derives its name from the problem faced by someone who is constrained by a fixed-size knapsack and must fill it with the most valuable items.", program: DPCode.knapsackProgram, algorithm: DP.knapsackAlgo, hasGif: true, bestCase : "O(nW)", worstCase : "O(nW)",avgCase: "O(nW)", spaceComplexity: "O(nW)"),
            
            AlgorithmData(name: "Binomial Coefficient", viewPhoto: "sigma", mainPhoto: "binomial", description: "A binomial coefficient C(n, k) can be defined as the coefficient of X^k in the expansion of (1 + X)^n. A binomial coefficient C(n, k) also gives the number of ways, disregarding order, that k objects can be chosen from among n objects; more formally, the number of k-element subsets (or k-combinations) of an n-element set.", program: DPCode.binomialProgram, algorithm: DP.binomialAlgo,hasGif: false, bestCase : "O(n*k)", worstCase : "O(n*k)",avgCase: "O(n*k)", spaceComplexity: "O(n*k)"),
            
            AlgorithmData(name: "Longest Commom Subsequence", viewPhoto: "lcs", mainPhoto: "lcs", description: "The longest common subsequence (LCS) problem is the problem of finding the longest subsequence common to all sequences in a set of sequences (often just two sequences). It differs from problems of finding common substrings: unlike substrings, subsequences are not required to occupy consecutive positions within the original sequences. The longest common subsequence problem is a classic computer science problem, the basis of data comparison programs such as the diff utility, and has applications in bioinformatics. It is also widely used by revision control systems such as Git for reconciling multiple changes made to a revision-controlled collection of files.", program: DPCode.lcsProgram, algorithm: DP.lcsAlgo, hasGif: true, bestCase : "O(mn)", worstCase : "O(mn)",avgCase: "O(mn)", spaceComplexity: "O(mn)"),
            
            AlgorithmData(name: "Matrix Chain Multiplication", viewPhoto: "mcm", mainPhoto: "mcm1", description: "Matrix chain multiplication (or Matrix Chain Ordering Problem, MCOP) is an optimization problem that can be solved using dynamic programming. Given a sequence of matrices, the goal is to find the most efficient way to multiply these matrices. The problem is not actually to perform the multiplications, but merely to decide the sequence of the matrix multiplications involved.", program: DPCode.mcmProgram, algorithm: DP.mcmAlgo, hasGif: false,bestCase : "O(n^3)", worstCase : "O(n^3)",avgCase: "O(n^3)", spaceComplexity: "O(n^2)")
            
            ]
        
        let graphData : [AlgorithmData] = [
            AlgorithmData(name: "Floyd-Warshall Algorithm", viewPhoto: "heapsort", mainPhoto: "floyd_list", description: "In computer science, the Floyd–Warshall algorithm is an algorithm for finding shortest paths in a weighted graph with positive or negative edge weights (but with no negative cycles). A single execution of the algorithm will find the lengths (summed weights) of the shortest paths between all pairs of vertices. Although it does not return details of the paths themselves, it is possible to reconstruct the paths with simple modifications to the algorithm. Versions of the algorithm can also be used for finding the transitive closure of a relation R, or (in connection with the Schulze voting system) widest paths between all pairs of vertices in a weighted graph.", program: GraphCode.floydProgram, algorithm: Graph.floydWarshall, hasGif: false, bestCase : "O(|V|^3)", worstCase : "O(|V|^3)",avgCase: "O(|V|^3)", spaceComplexity: "O(|V|^2)"),
            
            AlgorithmData(name: "Djikstra's Algorithm", viewPhoto: "connection", mainPhoto: "dijkstra_list", description: "Dijkstra's algorithm is an algorithm for finding the shortest paths between nodes in a graph, which may represent, for example, road networks. It was conceived by computer scientist Edsger W. Dijkstra in 1956 and published three years later", program: GraphCode.dijkstraProgram, algorithm: Graph.dijkstraAlgo, hasGif: true,bestCase : "O(|V|^2)", worstCase : "O(|V|^2)",avgCase: "O(|V|^2)", spaceComplexity: "O(|V|)")
        ]
        
        switch info{
        case 0:
            return sortData
        case 1:
            return searchData
        case 2:
            return dpData
        case 3:
            return graphData
        default:
            return sortData
        }
    }
}
