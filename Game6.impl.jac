impl GuessGame.process_guess {
    if self.guess < here.correct_number {
        print("Too low!");
        print(give_hint(self.guess, here.correct_number));
    } elif self.guess > here.correct_number {
        print("Too high!");
        print(give_hint(self.guess, here.correct_number));
    } else {
        print("🎉 Congratulations! You guessed correctly.");
        disengage;
    }
}

with entry: __main__ {
    root spawn GuessGame(3) by start then process_guess;
    root spawn GuessGame(7) by start then process_guess;
    root spawn GuessGame(5) by start then process_guess;
}
