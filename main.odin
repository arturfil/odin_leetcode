package main

import "core:fmt"
import ll "linked_lists"

main :: proc() {

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

}
