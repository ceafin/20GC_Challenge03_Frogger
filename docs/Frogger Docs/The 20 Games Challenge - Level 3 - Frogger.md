## Challenge #3: Make some art!

This game is similar in mechanical scope to challenge #2. Take the opportunity to focus on the game sprites. Try your hand at animating a moving sprite across multiple frames.  
If you are interested in composing your own sound tracks, then this is a great time to focus on that skill as well.

Finally, this is a great chance to play with particle systems. Make some particle effects that you can play when things explode (or when a frog is run over… splat!)

_**Things that you will learn:**_
- 2D sprite art
- Game Music
- Particle Effects

## Frogger

“Frogger has the ominous distinction of being the arcade game with the most ways to die” (Softline, 1982)

Frogger was released in Japan in 1981. The designer, Akira Hashimoto, came up with the idea for the game after he saw a frog trying to cross the road while Hashimoto was stopped at a red light. Instead of distinguishing itself as a technical masterpiece, the game stood out for its “nonviolent” gameplay and unique premise.
## Goal:
- Make and animate a frog. The frog can move up, down, left, or right. Instead of moving smoothly, the frog should hop each time a button is pressed. Each button press will move the frog one tile.
- Make the play area. The area is divided into lanes (rows). There is a safe lane, five lanes of road, another safe lane, and five lanes of water. Finally, there are five lillypads on the top of the screen.
- Make and animate the game obstacles. All obstacles and platforms will cross the screen horizontally. Obstacles will alternate direction for each lane.
	- The road has cars. Each lane has a unique pattern of cars, and speeds vary between lanes.
	- The river has alternating lanes of logs and turtles. Some turtles can dive underwater periodically. Some logs are actually crocodiles, which can eat the player if the player lands in their open mouth.
- The player should die if:
    1. they leave the screen
    2. they are hit by a car
    3. they fall in the water (frogs can drown, apparently)
    4. they are eaten by a wild animal
- If the player reaches a lillypad on the top of the screen, the lillypad will be “full.” When all five lillypads are full, the level is complete.
- Add a UI with a life counter and a score counter.
- Create an animation or use a particle effect to make the frog’s death extra juicy!

### Stretch goal:
- Make multiple levels. Higher difficulty levels feature more (faster) cars, and less platforms. Also, more logs crocodiles, and the center safe zone now features a snake (that can eat the player)