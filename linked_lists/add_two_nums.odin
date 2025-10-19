package linked_lists


add_two_nums :: proc(l1: ^ListNode, l2: ^ListNode) -> ^ListNode {
    dummy := new_clone(ListNode{val = 0})

    // we have to do this because proc params are immutable
    current, n1, n2 := dummy, l1, l2 
    carry := 0

    for n1 != nil || n2 != nil || carry > 0 {
        sum := carry

        if n1 != nil {
            sum += n1.val
            n1 = n1.next
        }

        if n2 != nil {
            sum += n2.val
            n2 = n2.next
        }
        
        current.next = new_clone(ListNode{val= sum % 10})
        current = current.next
        carry = sum / 10
    }

    return dummy.next
}

/* TEST : run this in main.odin

    // ll_1
    n1 := new_clone(ll.ListNode{val=1})
    n2 := new_clone(ll.ListNode{val=3})
    n3 := new_clone(ll.ListNode{val=5})
    n1.next = n2
    n2.next = n3

    // ll_2
    r1 := new_clone(ll.ListNode{val=2})
    r2 := new_clone(ll.ListNode{val=4})
    r3 := new_clone(ll.ListNode{val=4})
    r1.next = r2
    r2.next = r3

    // sum should be 378

    res := ll.add_two_nums(n1, r1)
    ll.print_ll(res)
    // fmt.println(res)

*/
