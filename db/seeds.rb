user1 = User.create(email: "m@m.com", password: "test333", password_confirmation: "test333", nickname: "Mikey")
user2 = User.create(email: "g@g.com", password: "test333", password_confirmation: "test333", nickname: "Gena")

ff7 = VideoGame.create(title: "Final Fantasy VII", console: "Playstation", release_year: 1997)
smash_bros = VideoGame.create(title: "Super Smash Bros.", console: "Nintendo 64", release_year: 1999)
halo = VideoGame.create(title: "Halo", console: "Xbox", release_year: 2001)
s_mario_world = VideoGame.create(title: "Super Mario World", console: "Super Nintendo", release_year: 1990)

u_v_game1 = UserVideoGame.create(user_id: 1, video_game_id: 1)
u_v_game2 = UserVideoGame.create(user_id: 1, video_game_id: 2)
u_v_game3 = UserVideoGame.create(user_id: 2, video_game_id: 1)

tag1 = Tag.create(name: "single-player")
tag2 = Tag.create(name: "multi-player")
tag3 = Tag.create(name: "co-op")
tag4 = Tag.create(name: "PvP")

ff7_review = Review.create(
                            user_id: 1,
                            video_game_id: 1,
                            title: "FF7 Review",
                            rating: 4,
                            content: "Before I get to the game, some background on me, so you have some context Probably my favorite game is FF VI, so keep that in mind, since I had that game in mind as I was playing. Also, (spoiler alert) I liked the game, even though I have some criticisms. Please beware that I will discuss plot elements openly. Lastly, I'm not a video game critic, I'm just me.

Welcome to my review / assortment of thoughts on FF VII, having played it only once.

Just in case you missed it:

Final Fantasy VII is a game released on the PS in 1997. In this game, you and a group of relative strangers try to stop villains from destroying the planet.

Let's just jump into the plot:

Disc 1: I actually really liked the Midgar portion of the game. You were thrust into the middle of this ongoing situation, but never felt lost. Well done. The Midgar villains were okay (Gya haaaa!!!), and the scene at the don's house was...interesting. The rest of the plot of disc 1 was a little underwhelming for me, as I was just hopping from city to city chasing the villain. Luckily, this disc explored the histories and intricacies of the characters, which I thoroughly enjoyed. Of course, the ending with Aeris was...memorable.

Disc 2: I liked that I had this feeling that I wasn't the whole storyline, that there was stuff going on that was bigger than me. There were many players: Sephiroth and Meteor, Rufus and the Turks, Weapons, and even the planet itself. I was just a small part of it. That being said, the plot was very difficult. Disc 2 did not give me the character development I was hoping for. Sure, I learned about what happened to Cloud, but that was far less interesting than Aeris or even Barett and Dyne. And nothing really happened with Cloud and Tifa, so there was no payoff at the end of the game. The game itself was much more open at this point, and I enjoyed that aspect.

Disc 3: Optional bosses, completionist side quests, and the final dungeon. I was expecting more from the final dungeon, though some of the enemies in there were impressive, and the final boss sequence was fun. I wish Sephiroth were more chatty. Then again, he was a different type of villain from beginning to end.

Side Quests: Like many before it and after, there are several side quests available. I probably did more than half of them, leaving out some of the Condor fights, missing out on Vincent, and skipping the battle arena and raising chocobos. These side quests (I’m sure) definitely add a lot to the game, and reward those who are willing to spend the time on them.

Overall, the plot should not be the reason to play this game. The characters are rich (though not fully utilized in my opinion), but the plot is too much for its own good.

This is an RPG, after all:

Much of this game should be familiar to an RPG veteran. Levels, the basic mechanisms, magic, vehicles, party member manipulation, chocobos, Ifrit and Shiva, battle arena. I do want to point out some highlights.

Battles: FF VII uses an active camera in battle scenes and moving party members and enemies. This mostly heightened the battle experience.

Materia: Materia is how your party learns and uses magic. Plenty has been said about the materia system by people much more knowledgeable than me, but I was still learning new materia combos towards the end of disc 3. The point: there's a lot to explore. It's extremely customizable and adaptable. The system, as neat as it is, also got cumbersome at the end. It takes ten minutes to outfit a new party, primarily due to the materia. Also, it seems the summons materia aren't as useful, particularly in discs 2 and 3. You're better off using regular magic.

Limit Breaks: As each character receives damage in battle, their limit break gauge fills up. When it is completely filled, they can do a special attack. Each character has several of their own attacks, including a 'master' level 4 limit break. This adds strategy and fun into the battles, which, we can all agree, can get monotonous. The manner in which you acquire better limit breaks was a bit esoteric to me, though; I only got the master break for one character.

Music: I love video game music. As expected, I really enjoyed the music in this game. There were several motifs used in multiple songs, and in completely different ways. It was really well done. I also noted how FF VI influenced some of the music, a famous example is the opening of Aeris's theme being the same as the opening of Celes's aria.

Visuals: This is a hit and miss with me. The '3D' visuals and various camera angles add artistic freedom, and mostly I enjoyed it. However, sometimes it was difficult to tell what was supposed to be a path, a ladder, a ramp, etc. To me, the blocky characters have not aged well. But I thought the cut scenes were fantastic. Great visuals, smooth transitions, really added to the experience.

Obligatory Summary

I applaud the direction the game is taking the FF series, trying some new techniques. I'm used to the early FF games, with a pedestrian plot, familiar map, familiar structure. FF VI breaks away with its more intricate, emotional, and interesting arc, but still uses the familiar map and camera. FF VII breaks even further. The map is different, camera angles are completely different, added cut scenes and movies, created more intricate and adult plot, and different types of characters (and I'm not just referring to Barret's race). I can't comment on the historical significance of this game to the industry, but I'm sure its success greatly influenced later FF titles. I was engaged throughout the entire game, cared about most of the characters (no, not you Cait Sith), and even though I didn’t care if I actually saved the world, I did want to finish the story.

If I had to put a number on it

It was a fun experience, but one I'm not sure I would do again. I loved the music, I appreciated the risks the game took, the visuals were mostly appealing. The plot was a bit too complex, but the characters were rich. So, if I had to put a number on it: 7.5.

There's certainly a lot more to discuss than what I presented here, especially about how Cait Sith is just the worst. Check out my playthrough thread, or post below. Thanks.
"
                          )
