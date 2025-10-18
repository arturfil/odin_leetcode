package hash_maps

has_duplicate :: proc(nums: []int) -> bool {
    seen := map[int]bool{}

    for num in nums {
        if _, has := seen[num]; has {
            return true
        } else {
            seen[num] = true
        }
    }

    return false
}
