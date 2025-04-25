package main

import "core:fmt"
import "game"

main :: proc() {
	game.initialize()
	game.run()
}
