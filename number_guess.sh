#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess --tuples-only -c"

# Prompt for user name
echo "Enter your username:"
read INPUT_USERNAME

# Find the user
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$INPUT_USERNAME';")

# If user not found
if [[ -z $USER_ID ]]
then
  # Insert into databse
  INSERT_USERNAME=$($PSQL "INSERT INTO users(username) VALUES('$INPUT_USERNAME');");

  # Get the user_id
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$INPUT_USERNAME'; ");

  echo -e "\n Welcome, $INPUT_USERNAME! It looks like this is your first time here."
else
  # Get the record for exisiting user
  USER_INFO=$($PSQL "SELECT username, COUNT(game_id) AS game_played, MIN(guess_count) AS best_guess FROM users LEFT JOIN games USING (user_id) WHERE user_id=$USER_ID GROUP BY username; ")

  echo $USER_INFO | while read USERNAME BAR GAME_PLAYED BAR BEST_GAME
  do
  echo -e "\nWelcome back, $USERNAME! You have played $GAME_PLAYED games, and your best game took $BEST_GAME guesses."
  done
  
fi

# Start the game

# Generate a random number
GENERATED_NUMBER=$(( (RANDOM % 1000) + 1 ))
PLAYER_GUESS=0
GUESS_COUNT=0
# echo "Answer: $GENERATED_NUMBER"

echo "Guess the secret number between 1 and 1000:" 

# Loop until they got the number
while [[ $PLAYER_GUESS -ne $GENERATED_NUMBER ]]
do
  # echo "Guess Count: $GUESS_COUNT"
  read PLAYER_GUESS
  GUESS_COUNT=$((GUESS_COUNT + 1))

  if [[ ! $PLAYER_GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    PLAYER_GUESS=0
  elif [[ $PLAYER_GUESS -lt $GENERATED_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
  elif [[ $PLAYER_GUESS -gt $GENERATED_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
  elif [[ $PLAYER_GUESS = $GENERATED_NUMBER ]]
  then
    echo "You guessed it in $GUESS_COUNT tries. The secret number was $GENERATED_NUMBER. Nice job!"
    INSERT_INTO_GAMES=$($PSQL "INSERT INTO games (user_id, guess_count) VALUES ($USER_ID, $GUESS_COUNT);")
  fi
done 


# echo "You guessed it in $GUESS_COUNT tries. The secret number was $GENERATED_NUMBER. Nice job!"
# INSERT_INTO_GAMES=$($PSQL "INSERT INTO games (user_id, guess_count) VALUES ($USER_ID, $GUESS_COUNT);")