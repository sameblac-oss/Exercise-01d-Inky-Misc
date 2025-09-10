/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = 0 //  0 Morning, 1 Noon, 2 Night

-> seashore

== seashore ==
You are sitting on the beach. 
It is { advance_time() } 

+ [Stroll down the beach] -> beach2
* [Touch the sand] -> sand
* [Bask in sun] -> bask
-> DONE

== beach2 ==
This is further down the beach.
* [Take picture of dolphin] -> dolphin

It is { advance_time() }
* {time == 1} [Pick up some seashells] -> shells
+ [Stroll back up the beach] -> seashore

== shells ==
You pick up the shells.
-> beach2

=== sand ===
You touch the stand. It gives you a nostalgic feeling of childhood. You decide to build a sandcastle. 
-> seashore

=== dolphin ===
You spot a dolphin in the distance. It magesticly dives in and out of the water. You take out your phone and snap a picture of it. 
-> beach2

=== bask ===
You find a good place to bask in the sun. You let the sun's rays beam on your back to give you the perfect tan. 
-> seashore


== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    
