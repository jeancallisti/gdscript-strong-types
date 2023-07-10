#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of DirAccess.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'DirAccessArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

# class_name DirAccessArray

# var a:Array = [];

# func _crash(message: String):
#     assert(false, message)

# func _assert_DirAccess(value: DirAccess):
#     if (!value is DirAccess):
#         _crash("value was expected to be of type DirAccess")

# func _assert_not_null_DirAccess(value: DirAccess):
#     if (value == null):
#         _crash("value was expected to be not null")
#     _assert_DirAccess(value)

# func set_at(position: int, value: DirAccess):
#     _assert_DirAccess(value);
#     a[position] = value;

# func get_at(position: int) -> DirAccess:
#     return a[position];

# func add(value: DirAccess):
#     _assert_DirAccess(value);
#     a.append(value);

# Same as add, but with a different name.
# func append(value: DirAccess):
#     _assert_DirAccess(value);
#     a.append(value);

# func remove(position: int):
#     a.remove(position);

# func size() -> int:
#     return a.size();

# func clear():
#     a.clear();

# # func Contains(value: DirAccess) -> bool:
# #     _assert_DirAccess(value);
# #     return a.contains(value);

