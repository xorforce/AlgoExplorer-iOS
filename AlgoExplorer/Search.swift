//
//  Search.swift
//  AlgoExplorer
//
//  Created by Bhagat Singh on 1/31/17.
//  Copyright © 2017 com.bhagat_singh. All rights reserved.
//

import Foundation

class Search{
    
    static let binarySearch = "function binarySearch(a, value, left, right)\n" +
        "if right < left\n" +
        " return not found\n" +
        "mid := floor((right-left)/2)+left\n" +
        "if a[mid] = value\n" +
        " return mid\n" +
        "if value < a[mid]\n" +
        " return binarySearch(a, value, left, mid-1)\n" +
        "else\n" +
        " return binarySearch(a, value, mid+1, right)\n" +
        "//mid determines the index of a given value"
    
    static let linearSearch = "//Input: Array D, integer key\n" +
        "// Output: returns i when found,\n//or -1 if not found\n" +
        "\n" +
        " For i = 0 to last index of D:\n" +
        "   if D[i] equals key:\n" +
        "     return i\n" +
        " return -1 //if not found\n"
}
