# Guess Who
The Guess Who Program is meant to be a fun game for two users that mimics the board game "Guess Who".

On the left side of the screen, it displays a random face and on the right side it displays a board with all of the faces. The objective for each player is to find out what face the other player has. The players do this by taking turns in asking yes/no questions that would help them narrow down their options. After each question, the user can eliminate faces by clicking on them which turns their image into a black image.

For example, in a turn, player1 may ask if player2 if their person is a female. If it is, player1 can click on all of the males since those cannot be the player2's person.

Once a player is only left with one face, they guess the name. The player who finds out the person first wins.

Members of team who created this program: Yuli Melamud, Mika Peleg, Heewon Jung

Before beginning, we all researched individually to find out what is the best way to implement our idea. Once we had a general idea of what we were going to do, we searched for the images that we would use. Heewon was in charge of cropping the individual pictures since our program required that they would all be the same size. Then, in class we calculated all the necessary dimentions wrote the code that would display on the screen all of the images.

The more challenging part was when we had to write the code that would change certain images to black squares based on where the user clicks. To do this, we ended up creating two lists of x-values and y-values for the positions where there should be a black squares. Each time a user clicks on a certain image, its position is added to the lists.

Overall, the program was a collaborative effort.

## How to use
1. Download project folder
2. Open ```guess_who.pde``` in Processing
3. Run the file
