#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of InputEventScreenDrag.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'InputEventScreenDragArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

# class_name InputEventScreenDragArray

# var a:Array = [];

# func _crash(message: String):
#     assert(false, message)

# func _assert_InputEventScreenDrag(value: InputEventScreenDrag):
#     if (!value is InputEventScreenDrag):
#         _crash("value was expected to be of type InputEventScreenDrag")

# func _assert_not_null_InputEventScreenDrag(value: InputEventScreenDrag):
#     if (value == null):
#         _crash("value was expected to be not null")
#     _assert_InputEventScreenDrag(value)

# func set_at(position: int, value: InputEventScreenDrag):
#     _assert_InputEventScreenDrag(value);
#     a[position] = value;

# func get_at(position: int) -> InputEventScreenDrag:
#     return a[position];

# func add(value: InputEventScreenDrag):
#     _assert_InputEventScreenDrag(value);
#     a.append(value);

# Same as add, but with a different name.
# func append(value: InputEventScreenDrag):
#     _assert_InputEventScreenDrag(value);
#     a.append(value);

# func remove(position: int):
#     a.remove(position);

# func size() -> int:
#     return a.size();

# func clear():
#     a.clear();

# # func Contains(value: InputEventScreenDrag) -> bool:
# #     _assert_InputEventScreenDrag(value);
# #     return a.contains(value);
