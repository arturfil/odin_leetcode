package main

import "core:fmt"
import sw "sliding_window"

main :: proc() {
   test_nums := []int{-2,1,-3,4,-1,2,1,-5,4}

    max_sum := sw.max_subarray(test_nums) 
    fmt.println("Max sum:", max_sum)

}
