package sliding_window

max_subarray :: proc (nums: []int) -> int {
    largest := nums[0]
    current_sum := nums[0]

    for num in nums[1:] {
        current_sum = max(current_sum + num, num)
        largest = max(current_sum, largest)
    }

    return largest
}
