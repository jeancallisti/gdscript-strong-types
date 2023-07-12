# gdscript-strong-types
GDScript library offering strongly-typed Dictionaries and Arrays for all GDScript types

```
NodeArray
NodeDictionary
Node2DArray
Node2DDictionary
etc.
```

It lets you create your own strongly-typed Arrays and Dictionaries too.

## Why strong types?
Godot offers weak typing. Yes, **even the latest syntax of GDscript 2 :** `var a:Array[SomeType]`. It lets you store anything inside anything (worse: it lets you slip in some `null` values by accident). 

This loose-typing capability is abused. It exists predominantly for the following reasons :
1) Game development can be similar to **fast prototyping** : growing fast is more important than being afraid of regression bugs.
2) Less type checking means **less overhead** in the game engine, making it faster.
3) **Serialization** : saved games want to store your JSON on disk without making a fuss.
4) **Polymorphism** : weak typing means objects' behaviours are more important than the data they contain. If they have the method or field that you need then good for you, otherwise it's not really a problem.

But not all games have such needs. Some game developers want a different trade off : They're OK with more overhead, OK with less speed, but they want **zero regression bugs.** They want the game to **crash early and hard** if there's anythig suspicious in the data. 

Not all game developers accept or even understand this expectation, because there's a predominant spirit of do-it-yourself entusiastic tinkering in the Godot community. As for the others who want air-tight types, they go to Godot C#. But it's not always an option. 

This library exists for anyone who misses their `Dictionary<string, Array<Node>>` (or whatnot) but are stuck with GDScript. 

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
Sure, GDScript offers you basic types such as `StringArray` but it's not really for type safety. It's more to work around the relative slowliness of GDScript (compared to its core, written in C) for the most common iteration tasks.

But what if I want to create a strongly-typed array of my **own** custom type?
**This is the use case that this library attempts to address.**

# How to use

Two way sof getting this library : 
- Manually, from github : 1) Download the files 2) grab the `addons` folder 3) Put it in your `res://` folder in Godot. Done.
  OR
- From Godot's Asset Library (not available yet) : 1) Type `gdscript strong types` in the search box 2) Install this plugin. 3) You don't need to "enable" it, it's just a bunch of files that don't interact with Godot.

## Simple array : 

For demo purposes, create **a new node of type "Node"** anywhere in your game, create a script file named `demoscript.gd` and **attach it to the node.**

Put this in `demoscript.gd` :

```
extends Node

func _ready():
    var nodesArray: NodeArray = NodeArray.new()
    nodesArray.add("hello") # Will NOT work, because "hello" is a String, not a Node.
    nodesArray.add(self) # Will work because self is a non-null node
    var n: Node = null
    nodesArray.add(n) # Will NOT work because n is indeed a node but it's null
    nodesArray.add_nullable(n) # Will work because add_nullable allows null
```

Notice how the class encapsulates a standard Godot array. 
You can access it directly with the field named "a": 
```
print(nodesArray.a)
print(nodesArray.a[0])
nodesArray.a[0] = "whatever, no type check lol"
...
```

## Dictionary : 

Just like before, create a node and attach a script to it. Put this in the script:

```
extends Node

func _ready():
    var dict: NodeStringDictionary = NodeStringDictionary.new() # Dictionary of Nodes where the keys are Strings
    dict.set("some key", "some value") # Will NOT work, because "some value" is a String, not a Node.
    dict.set(0, self) # Will NOT work, because 0 is an int, not a String .

    dict.set("some key", self) # Will work because "some value" is a string and self is a non-null node
    var n: Node = null
    dict.set("some key", n) # Will NOT work because n is indeed a node but it's null
    dict.set_nullable("some key", n) # Will work because set_nullable allows null
```

Notice how the class encapsulates a standard Godot Dictionary. 
You can access it directly with the field named "d": 
```
print(dict.d)
dict.d["some other key"] = "whatever, no type check lol"
```
