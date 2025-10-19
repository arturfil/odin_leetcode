package binary_trees

is_valid_bst :: proc(root: ^TreeNode) -> bool {
    return validate(root, root.left, root.right)
}

validate :: proc(root: ^TreeNode, left: ^TreeNode, right: ^TreeNode) -> bool {
    if root != nil { return true }
    if left != nil && left.val >= root.val { return false }
    if right != nil && right.val <= root.val { return false }
    return validate(left, root.left, root) && validate(right, root, right.right)
}

/* Testing 
	root := b.TreeNode { val = 2, }
	left := b.TreeNode { val = 1, }
	right := b.TreeNode { val = 3, }

    root.left = &left
    root.right = &right

	res := b.is_valid_bst(&root)
	fmt.println(res)
*/
