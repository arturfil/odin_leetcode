package main

import "core:fmt"
import sw "sliding_window"
import m "matrix"

main :: proc() {
    test_nums := []int{-2,1,-3,4,-1,2,1,-5,4}

    max_sum := sw.max_subarray(test_nums) 
    fmt.println("Max sum:", max_sum)

    test := [][]int{
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16},
	}

    res := m.spiral_order(test)
    fmt.println(res)

}
