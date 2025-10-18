package linked_lists

import "core:fmt"
ListNode :: struct {
    val: int,
    next: ^ListNode,
}

print_ll :: proc(l1: ^ListNode) {
    n1 := l1
    for n1 != nil {
        fmt.println(n1.val)
        n1 = n1.next
    }
}
