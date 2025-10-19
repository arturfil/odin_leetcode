package main

import "core:fmt"

import b "binary_trees"

main :: proc() {

	root := b.TreeNode { val = 2, }
	left := b.TreeNode { val = 1, }
	right := b.TreeNode { val = 3, }

    root.left = &left
    root.right = &right

	res := b.is_valid_bst(&root)
	fmt.println(res)

}
