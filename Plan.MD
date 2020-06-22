1. Both players start with 3 lives; misanswering a question will cost one life

2. At the end of each turn, a message indicating if the player was correct and the score should be logged to the console

3. Game finishes when one of the players misanswer thrice - game should announce winner and score

Task 1: Extract Nouns for classes

What Classes do I think I need?
- Player class w/ name and score
- Question class w/ question generator and response feedback
- Score class

Task 2: Player class
- Will create the players
- Each will have an initial score of 0
- Status of whether or not it is their turn
- Their response
- Methods: initializer, turn-setter, score-setter, score-getter

Question Class
- Will store the questions and the answer
- Will check if the player's answer matches the question class' answer
- Question-maker, response-getter, feeback-giver

Score Class
- Will keep track of score
- Need to be initialized with two player classes
- Methods: initializer, point-deductor, message-setter, message modifier

Plan de match:

How do I want everything to interact?
- Each player will keep their own score and will have a status of isTurn?
- Using the above logic, the question class will ask a question, store the response, display if it is the correct answer or not
- Based on the question class' response, the score class will extract from the person class who's turn it is, the turn will be set and the score will be modified and displayed