package deck

import "core:fmt"
import "core:math/rand"

// INFO: There are 4 suites and 52 cards in a deck of cards. Each suit must contain 13 cards.

MAX_DECK_COUNT :: 52
MAX_SUIT_IN_DECK_COUNT :: 13

Suit :: enum {
	Hearts,
	Diamonds,
	Clubs,
	Spades,
}

Rank :: enum {
	Two,
	Three,
	Four,
	Five,
	Six,
	Seven,
	Eight,
	Nine,
	Ten,
	King,
	Queen,
	Jack,
	Ace,
}

Card :: struct {
	suit: Suit,
	rank: Rank,
}

generate :: proc() -> ([52]Card, bool) {
	fmt.println("Generating Deck")
	deck: [52]Card
	count := 0
	for s in Suit {
		for r in Rank {
			deck[count] = create_card(s, r)
			count += 1
		}
	}
	return deck, true
}

create_card :: proc(suit: Suit, rank: Rank) -> Card {
	retCard := Card {
		suit = suit,
		rank = rank,
	}
	return retCard
}

shuffle_deck :: proc(deck: ^[52]Card) {
	currentCard: Card
	randomCard: Card
	randomIndex: int
	for i in 0 ..< 4 {
		for index in 0 ..< 52 {
			randomIndex = rand.int_max(len(deck^))
			currentCard = deck[index]
			randomCard = deck[randomIndex]
			deck^[index] = randomCard
			deck^[randomIndex] = currentCard
		}
	}
}
