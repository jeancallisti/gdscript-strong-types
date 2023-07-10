#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of InputEventMagnifyGesture.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'InputEventMagnifyGestureArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

# class_name InputEventMagnifyGestureArray

# var a:Array = [];

# func _crash(message: String):
#     assert(false, message)

# func _assert_InputEventMagnifyGesture(value: InputEventMagnifyGesture):
#     if (!value is InputEventMagnifyGesture):
#         _crash("value was expected to be of type InputEventMagnifyGesture")

# func _assert_not_null_InputEventMagnifyGesture(value: InputEventMagnifyGesture):
#     if (value == null):
#         _crash("value was expected to be not null")
#     _assert_InputEventMagnifyGesture(value)

# func set_at(position: int, value: InputEventMagnifyGesture):
#     _assert_InputEventMagnifyGesture(value);
#     a[position] = value;

# func get_at(position: int) -> InputEventMagnifyGesture:
#     return a[position];

# func add(value: InputEventMagnifyGesture):
#     _assert_InputEventMagnifyGesture(value);
#     a.append(value);

# Same as add, but with a different name.
# func append(value: InputEventMagnifyGesture):
#     _assert_InputEventMagnifyGesture(value);
#     a.append(value);

# func remove(position: int):
#     a.remove(position);

# func size() -> int:
#     return a.size();

# func clear():
#     a.clear();

# # func Contains(value: InputEventMagnifyGesture) -> bool:
# #     _assert_InputEventMagnifyGesture(value);
# #     return a.contains(value);
