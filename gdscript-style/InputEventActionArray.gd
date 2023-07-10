#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of InputEventAction.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'InputEventActionArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

# class_name InputEventActionArray

# var a:Array = [];

# func _crash(message: String):
#     assert(false, message)

# func _assert_InputEventAction(value: InputEventAction):
#     if (!value is InputEventAction):
#         _crash("value was expected to be of type InputEventAction")

# func _assert_not_null_InputEventAction(value: InputEventAction):
#     if (value == null):
#         _crash("value was expected to be not null")
#     _assert_InputEventAction(value)

# func set_at(position: int, value: InputEventAction):
#     _assert_InputEventAction(value);
#     a[position] = value;

# func get_at(position: int) -> InputEventAction:
#     return a[position];

# func add(value: InputEventAction):
#     _assert_InputEventAction(value);
#     a.append(value);

# Same as add, but with a different name.
# func append(value: InputEventAction):
#     _assert_InputEventAction(value);
#     a.append(value);

# func remove(position: int):
#     a.remove(position);

# func size() -> int:
#     return a.size();

# func clear():
#     a.clear();

# # func Contains(value: InputEventAction) -> bool:
# #     _assert_InputEventAction(value);
# #     return a.contains(value);

