% GUESS THE NUMBER GAME
target = randi([1 50]);   % picks a number
guess = -1;

disp('Welcome to Guess the Number Game!');
disp('I have selected a number between 1 and 50.');

while guess ~= target
    guess = input('Enter your guess: ');
    
    if guess > target
        disp('Too High!');
    elseif guess < target
        disp('Too Low!');
    else
        disp('Correct! You guessed it!');
    end
end