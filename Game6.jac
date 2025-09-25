"""A Number Guessing Game with LLM-powered hints"""

import random;
import from byllm.llm { Model };

# Global LLM instance (Gemini 2.0 Flash)
glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);

"""Provide a fun hint if guess is incorrect"""
def give_hint(guess: int, correct_number: int) -> str by llm();

walker GuessGame {
    has guess: int;

    can start entry;
    can process_guess entry;
}

node turn {
    has correct_number: int;

    with entry {
        # Assign a random number between 1–10 when node is created
        correct_number = random.randint(1, 10);
    }
}

impl GuessGame.start {
    if not [root --> (?turn)] {
        # Spawn a new turn node if none exists
        next = root ++> turn;
    } else {
        # Reuse the existing one
        next = [root --> (?turn)];
    }
    visit next;
}