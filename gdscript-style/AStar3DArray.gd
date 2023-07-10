#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of AStar3D.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'AStar3DArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

# class_name AStar3DArray

# var a:Array = [];

# func _crash(message: String):
#     assert(false, message)

# func _assert_AStar3D(value: AStar3D):
#     if (!value is AStar3D):
#         _crash("value was expected to be of type AStar3D")

# func _assert_not_null_AStar3D(value: AStar3D):
#     if (value == null):
#         _crash("value was expected to be not null")
#     _assert_AStar3D(value)

# func set_at(position: int, value: AStar3D):
#     _assert_AStar3D(value);
#     a[position] = value;

# func get_at(position: int) -> AStar3D:
#     return a[position];

# func add(value: AStar3D):
#     _assert_AStar3D(value);
#     a.append(value);

# Same as add, but with a different name.
# func append(value: AStar3D):
#     _assert_AStar3D(value);
#     a.append(value);

# func remove(position: int):
#     a.remove(position);

# func size() -> int:
#     return a.size();

# func clear():
#     a.clear();

# # func Contains(value: AStar3D) -> bool:
# #     _assert_AStar3D(value);
# #     return a.contains(value);
