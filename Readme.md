# 🂡 Command-Line Blackjack in Odin

## 📝 Project Overview
A minimalist command-line Blackjack game written in the [Odin programming language](https://odin-lang.org/). This project demonstrates core programming concepts in Odin including I/O handling, control flow, and data structures, while providing a playable and interactive blackjack experience in the terminal.

---

## 🎯 Features
- Basic Blackjack rules (player vs dealer)
- Full deck of 52 cards, shuffled each game
- Player actions: *Hit*, *Stand*
- Dealer logic following standard rules (hits until 17+)
- Clear win/lose/draw outcome messages
- CLI-based UI with minimal dependencies

---

## 🛠️ Technologies
- **Language**: [Odin](https://odin-lang.org/)
- **Platform**: Cross-platform (Tested on Windows & Linux)

---

## 📦 Getting Started

### Prerequisites
- Odin compiler (install via: [odin-lang.org/docs/install](https://odin-lang.org/docs/install))
- A terminal emulator

### Run the Game
```bash
odin run src
```

## 🧠 How It Works
1. Deck Initialization: Generates a fresh 52-card deck.
2. Shuffling: Randomly shuffles the deck using rand from Odin's standard library.
3. Dealing: Both player and dealer receive 2 cards initially.
4. Player Turn: Choose to Hit or Stand until bust or stand.
5. Dealer Turn: Dealer plays by rules (hits below 17).
6. Result: The program determines the winner based on Blackjack rules.

## 📁 File Structure

```less
src/
├── main.odin            // Entry point
├── deck.odin            // Deck generation and shuffle
├── game.odin            // Game loop and logic
└── utils.odin           // Helper functions (e.g., card display, input)
```

## 🚧 Future Improvements
- Split and Double Down options
- Persistent game stats
- Multiplayer support
- Betting system

##📄 License
MIT License

## Debug Setup
To setup debugging for Odin programs on Windows with VsCode follow these steps:

- make sure you have the [C/C++ extension pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools) (VsCode extension) installed
- create a `.vscode` folder at the root of your Odin project
- copy the `launch.json` and `tasks.json` into it
- click on the debug tab in VsCode, then click on the debug button at the top (or press F5)


Note: if you want to use a starter template which also sets up a tracking allocator which tracks and reports memory leaks you can use: https://github.com/RednibCoding/Odin-Starter

## FAQ
Q: When I start debugging, I get the following error popup: Configured debug type 'cppvsdbg' is not supported.

A: Make sure you have the [C/C++ extension pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools) installed. If it is already installed, try reinstalling it.