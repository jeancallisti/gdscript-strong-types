# gdscript-strong-types
GDScript library offering strongly-typed Dictionaries and Arrays for all GDScript types

## Why strong types?
Godot offers weak typing. It lets you store anything inside anything. But this capability is abused.
It exists predominantly for the following reasons :
1) Game development can be similar to fast prototyping : growing fast is more important than being afraid of regression bugs.
2) Less type checking means less overhead in the game engine, making it faster.
3) Serialization : saved games want to store your JSON on disk without making a fuss.
4) Polymorphism : weak typing means objects' behaviours are more important than the data they contain. If they have the method or field that you need then good for you, otherwise it's not really a problem.

But not all games are like that. Some game developers want a different trade off : They're OK with more overhead, OK with less speed, but they want **zero regression bugs.** They want the game to **crash early and hard** if there's anythig suspicious in the data. Not all game developers accept or even understand this expectation.

## An example : 

```
func my_function(node: Node)
   print("I did the thing")

# GDScript lets you do this:
my_function("I should be a node, not a string")
```
The only problem you'll encounter is that node will be null inside my_function.

**This will not fly with this library.** We priviledge this kind of approach : 

```
func _assertNode(n: Node)
   if(n == null):
       assert(false, "Forbidden: n should not be null")
   if (!n is Node):
       assert(false, "Forbidden: n should be of type 'Node'")


func my_function(node: Node)
   _assertNode(node)
   print("I did the thing")
```

## What about arrays and dictionaries?

There's still the case of complex data structures. **Godot lets you put anything in an array or a dictionary.** You can even use object references as keys (facepalm).
Sure, GDScript offers you basic types such as StringArray but it's not really for type safety. It's more to work around the relative slowliness of GDScript (compared to its core, written in C) for the most commin iteration tasks.
But what if I want to create a stringly-typed array of my own custom type?

**This is the use case that this library attempts to address.**
