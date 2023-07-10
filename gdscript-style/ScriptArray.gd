#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of Script.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'ScriptArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

# class_name ScriptArray

# var a:Array = [];

# func _crash(message: String):
#     assert(false, message)

# func _assert_Script(value: Script):
#     if (!value is Script):
#         _crash("value was expected to be of type Script")

# func _assert_not_null_Script(value: Script):
#     if (value == null):
#         _crash("value was expected to be not null")
#     _assert_Script(value)

# func set_at(position: int, value: Script):
#     _assert_Script(value);
#     a[position] = value;

# func get_at(position: int) -> Script:
#     return a[position];

# func add(value: Script):
#     _assert_Script(value);
#     a.append(value);

# Same as add, but with a different name.
# func append(value: Script):
#     _assert_Script(value);
#     a.append(value);

# func remove(position: int):
#     a.remove(position);

# func size() -> int:
#     return a.size();

# func clear():
#     a.clear();

# # func Contains(value: Script) -> bool:
# #     _assert_Script(value);
# #     return a.contains(value);

