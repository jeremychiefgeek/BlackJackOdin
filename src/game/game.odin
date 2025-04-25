package game

import "core:fmt"
import "deck"

initialize :: proc() {
	currentCount := 0
	if deck, ok := deck.generate(); ok {
		fmt.printfln("Deck Count: %i", len(deck))
		for i := 0; i < len(deck); i += 1 {
			currentCount = i + 1
			fmt.printfln("Card %i: %s of %s", currentCount, deck[i].suit, deck[i].rank)
		}
	}
}

run :: proc() {
	// GAME LOOP
}

update :: proc() {

}
