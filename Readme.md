# Designing for emergence

## Abstract

As video games mature as a medium, and an ever-increasing differentiation in genres, content, and target audiences takes place in the space, questions arise about all the possible approaches that can be used when designing gameplay systems. Most broadly, gameplay systems can be categorized as systems of progression and systems of emergence, and games that rely mostly on either can be categorized as games of progression or games of emergence. In this work I will attempt to lay out the basics of game design approaches that focus on creating emergence and implement them in a prototype of a political strategy and management game.

## Introduction

???

## Game Mechanics

Game mechanics are the rules, processes, and data that make up a game. They define how a game is played and the conditions to end the game in victory or defeat. We'll briefly explore five types of game mechanics and their role in several game genres.

### Physics

Physics as a game mechanic defines motion and force within the game world, not necessarily as a strict model of real-world Newtonian mechanics. Game objects can move and collide within the game world and be subject to various other forces.

### Internal economy

The internal economy mechanics define how game elements are transacted within the game. These transactions may include collection, consumption, and trading of various game resources such as currency, items, health, power, and mana. Typically, economy mechanics are implemented as a five-component system:
1. Tap - generates new resources into the economy (enemies who drop loot, lumbermills, regenerating heath bars)
2. Inventory - holds resources that the player or other entity owns (item list, experience counter)
3. Converter - converts one resource into another (spending money, crafting)
4. Drain - removes resources from the economy (losing health, units, spending ammo)
5. Trader - acts like other players, has own inventory of resources

Converters and Drains are typically tied up with Taps with positive and negative feedback loops respectively.

### Progression mechanics

Progression mechanics include elements such as level design, mission objectives, and granting or denying the player access to different parts of the game world.

### Tactical maneuvering

Tactical maneuvering mechanics deal with the placement of units within the game world with the goal of gaining offensive or defensive advantage. This is the core mechanic in most strategy games, and can be relevant in role-playing games, sport, and simulation games as well. Some games may restrict the set of possible positions to a grid, such as the case with Chess, Go, and the Civilization series.

### Social interaction

Social interaction mechanics involve the governing of interactions between players within the game. These may include mechanics of forming and breaking alliances, trading between players, governing the play-acting in role-playing games, and even such elements as giving gifts and inviting friends to join.

Games can be categorized into genres based on the type of gameplay. Since gameplay is generated from the mechanics the game implements, it follows that the genre will have a significant impact on what type of mechanics are implemented in the game and to what extent. Image 1.1 shows some common game genres and how they relate to the types of mechanics they implement. The thickness of the outlines indicates relative importance of the type of mechanics to games in that genre. Items outlined with a thick black line can be considered to be a core mechanic.

!["Game Mechanics and Game Genres"](/DocImg/mechanicsandgenres.png)
Image 1.1 - Game Mechanics and Game Genres

[Something about smols not being contentful]

## Games of emergence and games of progression

Games that rely mostly on either emergence or progression can be thought of as games of emergence or games of progression, but most games will incorporate both of these categories in their gameplay. Strategy games often feature scripted storylines despite heavily relying on complex tactical maneuvering and economy systems, while most adventure games have at least a rudimentary combat or inventory management system to supplement their mostly narrative-based gameplay.

Visual novels may be taken as an example of pure games of progression, where every possible state of the game has been scripted and accounted for by the developers, while chess, with its practically uncountable unique playthroughs would be the poster child for pure games of emergence.

## Challenges

[Paragraph from Sellers' Constructing Emergence]

[The witcher cow spawn]
[Dwarf fortress drunk cats]
[Victoria machine tools]

## Demokrasi

## Conclusion

???

## References

- Ernest Adams, Joris Dormans. "Game Mechanics: Advanced Game Design"
- Jesper Juul. "The Open and the Closed: Games of Emergence and Games of Progression". https://www.jesperjuul.net/text/openandtheclosed.html
- Michael Sellers. "Advanced Game Deisgn: A Systems Approach"
- Michael Sellers. "Constructing Emergence". https://www.projecthorseshoe.com/reports/featured/ph18r7.htm
- Game Maker's Toolkit. How Video Game Economies are Designed. https://www.youtube.com/watch?v=Zrf1cou_yVo
