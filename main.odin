package main

import "core:fmt"
import s "strings_problems"

main :: proc() {

    str := "A man, a plan, a canal, Panama"
    res := s.is_palindrome(str)

    fmt.println(res)

}
