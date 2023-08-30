module Narrative
    def intro
        "Welcome to Hangman. 
        The computer is going to choose a word between 5-12 characters long,
        and you are going to try to guess the word in 12 tries."
    end

    def choose(try)
        "Please enter a character. (#{try} tries left): "
    end

    def invalid(cor_arr, inco_arr)
        "Invalid input."
        bundle_with_try(cor_arr, inco_arr)
    end

    def fail(cor_arr, inco_arr)
        "The word does NOT include the character."
        bundle_with_try(cor_arr, inco_arr)
    end

    def success(cor_arr, inco_arr)
        "The character is included in the word! Nice job!\n"
        bundle_without_try(cor_arr, inco_arr)
    end

    def complete
        "You have correctly guessed the word!"
    end

    def incomplete(word)
        "Game over. The word in mystery was #{word}. Better luck next time!"
    end

    private

    def bundle_with_try(cor_arr, inco_arr)
        correct(cor_arr)
        incorrect(inco_arr)
        try_again
    end

    def bundle_without_try(cor_arr, inco_arr)
        correct(cor_arr)
        incorrect(inco_arr)
    end

    def try_again
        "Please try again."
    end

    def correct(arr)
        "correct letters: #{arr}"
    end

    def incorrect(arr)
        "incorrect letters: #{arr}"
    end
end