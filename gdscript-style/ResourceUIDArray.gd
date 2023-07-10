#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of ResourceUID.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'ResourceUIDArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

# class_name ResourceUIDArray

# var a:Array = [];

# func _crash(message: String):
#     assert(false, message)

# func _assert_ResourceUID(value: ResourceUID):
#     if (!value is ResourceUID):
#         _crash("value was expected to be of type ResourceUID")

# func _assert_not_null_ResourceUID(value: ResourceUID):
#     if (value == null):
#         _crash("value was expected to be not null")
#     _assert_ResourceUID(value)

# func set_at(position: int, value: ResourceUID):
#     _assert_ResourceUID(value);
#     a[position] = value;

# func get_at(position: int) -> ResourceUID:
#     return a[position];

# func add(value: ResourceUID):
#     _assert_ResourceUID(value);
#     a.append(value);

# Same as add, but with a different name.
# func append(value: ResourceUID):
#     _assert_ResourceUID(value);
#     a.append(value);

# func remove(position: int):
#     a.remove(position);

# func size() -> int:
#     return a.size();

# func clear():
#     a.clear();

# # func Contains(value: ResourceUID) -> bool:
# #     _assert_ResourceUID(value);
# #     return a.contains(value);

