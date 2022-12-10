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

Games can be categorized into genres based on the type of gameplay. Since gameplay is generated from the mechanics the game implements, it follows that the genre chosen for a given game will have a significant impact on what type of mechanics will need to be implemented and to what extent. Image 1.1 shows some common game genres and how they relate to the types of mechanics they implement. The thickness of the outlines indicates relative importance of the type of mechanics to games in that genre. Items outlined with a thick black line can be considered to be a core mechanic.

| !["Game Mechanics and Game Genres"](/DocImg/mechanicsandgenres.png) |
| :---: |
| Image 1. Game Mechanics and Game Genres (Game Mechanics: Advanced Game Design) |

## Games of emergence and games of progression

Of the five types of game mechanics introduced in the previous chapter, mechanics of progression are used to create games of progression. The other four types of mechanics correspond to the category of emergence. The term "Emergence" is used to describe the behavior of a system that cannot be directly derived from its constituent parts, i.e. a system "larger than the sum of its parts". In games, the distinction between games of emergence and games of progression was first introduced by Jesper Juul in his essay "The Open and the Closed: Games of Emergence and Games of Progression" (2002).

Games that rely mostly on either emergence or progression can be thought of as games of emergence or games of progression, but most games will incorporate both of these categories in their gameplay. Strategy games often feature scripted storylines despite heavily relying on complex tactical maneuvering and economy systems, while most adventure games have at least a rudimentary combat or inventory management system to supplement their mostly narrative-based gameplay.

Visual novels may be considered as pure games of progression, where every possible state of the game has been scripted and accounted for by the developers, while chess, with its practically uncountable unique playthroughs would be the poster child for pure games of emergence.

[probability space]

| Structure | Emergence | Progression |
| :---: | :---: | :---: |
| Number of rules | Low | High |
| Number of game elements | High | Low-High |
| Interactions among elements | High | Low |
| Probability space | Large, wide | Small, deep |
| Replay value | High | Low |
| Length of game | **Tends to be short (Civilization is a rare exception) | Tends to be long |
| Learning curve | Tends to be steep | Tends to be gentle |

Table 1. Structural differences between mechanics of emergence and mechanics of progression (Game Mechanics: Advanced Game Design)

** Note: Since the publication of Game Mechanics: Advanced Game Design in 2012, long-form emergence focused games in the grand strategy and city building genres have risen in popularity, rendering this assessment no longer valid


[more text needed here]
[Sellers on verbs and the three axis]
[Juul on open and closed]

| !["Dimensions of Emergence"](/DocImg/emergencedimensions.png) |
| :---: |
| Image 2. Dimensions of Emergence (Constructing Emergence) |

## Challenges

Designing games around emergent gameplay comes with its own unique challenges. Unlike with the more straightforward approach of designing levels, scripted objectives, and storylines, when building systems for emergent gameplay it may be difficult to fully predict every interaction between the systems, track the progress made in development, or even evaluate whether the design will ultimately work at all. 

No concrete and reliable solution for tackling these challenges exists as of yet, so incremental experimentation is currently the best approach when designing games for emergent gameplay.

The unpredictable nature of complex systems has the potential to completely break an already fully developed and released game, or at least provide advantageous exploits to enterprising players. We'll look into some notable outcomes likely never anticipated by the developers.

### The Witcher 3: Broken cow tap

The first release of the role-playing game The Witcher 3 had a resource tap issue. The player could walk into a nearby farm at the start of the game, kill all the cows and sell their leather, and sit down to meditate. By the end of the meditation, the cows would come back to life, allowing the player to kill them and sell their leather again. This process was infinitely repeatable, so any sufficiently patient player could amass a significant fortune before leaving the first village in the game. The developers fixed this broken tap in a patch that introduced the Bovine Defese Force Initiative. The BDFI was simply a powerful monster that spawned nearby if the player killed six cows. This fix worked until it didn't, as players returned after getting more powerful to repeatedly kill the monster, amassing even more wealth as unintended by the developers. Another patch made the monster only spawn once.

### Victoria 2: Stuck in time

In Victoria 2, a grand strategy game set mostly in the Victorian era, the player takes control of a nation and leads it through the historical period between 1836 and 1918. The core focus of the game is industrialization, and the necessary resource to achieve it within the game are machine tools. At the start of the game, the only nation owning and capable of producing machine tools is Britain. Under normal conditions, Britain starts exporting machine tools from the start of the game, enabling any nation to acquire them and start their own process of industrialization. However, it is possible for a player (or a particularly mischievous AI) to fully block the export of machine tools from Britain at the start of the game, preventing any nation from industrializing well into the 20th century. This breaks the core mechanic of the game and may lead to an underwhelming, albeit unique experience of the period.

### Dwarf Fortress: A drinking problem

Perhaps the most famous example of a video game designed purely around emergence comes with perhaps the most famous example of an adverse unintended consequence of it. In Dwarf Fortress, a construction and management game of incredible complexity arising from the sheer number of systems being independently simulated, players started encountering large numbers of dead cats covered in their own vomit shortly after an update introducing taverns into the game. It was assumed that this state in the cats could have been caused by a number of reasons, but none of the potentially related systems had been changed in the last update. Alcohol poisoning in the taverns was not a potential suspect either, since cats were explicitly programmed to not like alcohol. An investigation by the developer aided by the saved games provided by the players revealed that what occurred was a chain reaction starting from dwarves dropping their drinks on the ground when being called to duty, cats walking around the tavern covering their paws in alcohol, a miscalculation of how much alcohol their paws pick up from the ground, and cats cleaning their paws by licking them, ultimately ending in alcohol poisoning. A complex interaction between many small, self-contained systems had resulted in practically unforeseeable behavior.

## Demokrasi

Demokrasi is the working title for a prototype of a political management and strategy game developed as part of this thesis for the purpose of demonstrating the basic principles behind emergence-driven game design. Aziz al-Batteri

subject to change

---


---
subject to change

## Conclusion

???

## References

- Ernest Adams, Joris Dormans. "Game Mechanics: Advanced Game Design"
- Jesper Juul. "The Open and the Closed: Games of Emergence and Games of Progression". https://www.jesperjuul.net/text/openandtheclosed.html
- Michael Sellers. "Advanced Game Deisgn: A Systems Approach"
- Michael Sellers. "Constructing Emergence". https://www.projecthorseshoe.com/reports/featured/ph18r7.htm
- Game Maker's Toolkit. How Video Game Economies are Designed. https://www.youtube.com/watch?v=Zrf1cou_yVo
- Eurogamer. Why Dwarf Fortress started killing cats. https://www.youtube.com/watch?v=6yWf6BHqiWM