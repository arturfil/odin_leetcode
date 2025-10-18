package matrixes

spiral_order :: proc(matrixes: [][]int) -> [dynamic]int {
    rows, cols := len(matrixes), len(matrixes[0])
	upper, lower, left, right := 0, rows-1, 0, cols-1
    res := [dynamic]int{}

	for len(res) < rows * cols {
		for i := left; i <= right; i+=1 {
			append(&res, matrixes[upper][i])
		}

		for j := upper + 1; j <= lower; j+=1 {
			append(&res, matrixes[j][right])
		}

        if upper == lower || left == right { break }

		for i := right-1 ; i >= left; i-=1 {
			append(&res, matrixes[lower][i])
		}

		for j := lower-1; j >= upper+1; j-=1 {
		    append(&res, matrixes[j][left])
		}
		upper+=1 
		lower-=1 
		left+=1
		right-=1
	}

    return res 
}
