package game

import "core:fmt"
import "deck"

gameDeck: [52]deck.Card

initialize :: proc() {
	if playingDeck, ok := deck.generate(); ok {
		gameDeck = playingDeck
	}
}

run :: proc() {
	// GAME LOOP
	fmt.printfln("Deck Count: %i", len(gameDeck))
	deck.shuffle_deck(&gameDeck)
	currentCount := 0
	for i := 0; i < len(gameDeck); i += 1 {
		currentCount = i + 1
		fmt.printfln("Card %i: %s of %s", currentCount, gameDeck[i].rank, gameDeck[i].suit)
	}
}

update :: proc() {

}
