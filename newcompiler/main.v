// <insert copyright notice here>

module main

#include <stdio.h>

// hack to define the version variable at compile time
// TODO: make this not rely on c
#ifndef VERSION
#define VERSION "unknown"
#endif
import const (
	VERSION string // <-- as of now, the string attribute does absolutely nothing because of the way the compiler works.
	               //     see this issue for the status on that: https://github.com/vlang/v/issues/631
)

fn main() {

	// i need to manually convert the c byte array to a string like this until the above issue is resolved
	println('${tos2(VERSION)}')

	// TODO: argparsing logic

}
