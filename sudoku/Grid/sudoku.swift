//
//  sudoku.swift
//  Grid
//
//  Created by Xuanyu Wang on 2016-10-07.
//  Copyright © 2016 xjiang. All rights reserved.
//

import Foundation

struct cell{
    var value: Int
    var state: Int
}

func generateSudokuPuzzle(cells: [[cell]], x: Int, y: Int) -> Int {
    var stateOfNums = Array(count: 9, repeatedValue: 1)
    let used: Int = 0
//////////////////////////////////////////////////////////////////////////
//In this setion, find which number has been used in the corresponding
//row, column, and block, and mark it as "used"
    for i in 0...(y-1) {
        stateOfNums[cells[x][i].value - 1] = used
    }
    
    for i in 0...(x-1) {
        stateOfNums[cells[i][y].value - 1] = used
    }
    
    for i in (3*(x/3))...(3*(x/3)+3 - 1) {
        for j in (3*(y/3))...(y-1) {
            stateOfNums[cells[i][j].value - 1] = used
        }
    }

    //Find out the number of valid numbers
    var numOfValidNums: Int = 0;
    for i in 0...8 {
        numOfValidNums += stateOfNums[i]
    }
    
    var NumsToAssign = [Int]()
    
    var j: Int = 0
    for i in 0...8 {
        if stateOfNums[i] == 1 {
            NumsToAssign[j] = i + 1
            j += 1
        }
    }
    
    //Coordinates of the next cell which we will assign number to it
    var ny: Int, nx: Int
    
    if x == 8 {
        ny = y + 1
        nx = 0
    }
    
    return 0
}