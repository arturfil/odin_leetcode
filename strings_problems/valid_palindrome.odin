package strings_problems

import "core:strings"
import "core:unicode"

is_palindrome :: proc(s: string) -> bool {
	new_s := cleanup(s)

	left, right := 0, len(new_s) - 1
	for left < right {
		if new_s[left] != new_s[right] {return false}
		left += 1
		right -= 1
	}

	return true

}

// we need this clean up function because
// odin currently doesn't have regex
cleanup :: proc(s: string) -> string {
	b := strings.builder_make()
	defer strings.builder_destroy(&b)

	for r in s {
		if unicode.is_alpha(r) || unicode.is_digit(r) {
			strings.write_rune(&b, unicode.to_lower(r))
		}
	}

	return strings.clone(strings.to_string(b))
}
