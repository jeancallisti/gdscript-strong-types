#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of HashingContext.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'HashingContextArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

# class_name HashingContextArray

# var a:Array = [];

# func _crash(message: String):
#     assert(false, message)

# func _assert_HashingContext(value: HashingContext):
#     if (!value is HashingContext):
#         _crash("value was expected to be of type HashingContext")

# func _assert_not_null_HashingContext(value: HashingContext):
#     if (value == null):
#         _crash("value was expected to be not null")
#     _assert_HashingContext(value)

# func set_at(position: int, value: HashingContext):
#     _assert_HashingContext(value);
#     a[position] = value;

# func get_at(position: int) -> HashingContext:
#     return a[position];

# func add(value: HashingContext):
#     _assert_HashingContext(value);
#     a.append(value);

# Same as add, but with a different name.
# func append(value: HashingContext):
#     _assert_HashingContext(value);
#     a.append(value);

# func remove(position: int):
#     a.remove(position);

# func size() -> int:
#     return a.size();

# func clear():
#     a.clear();

# # func Contains(value: HashingContext) -> bool:
# #     _assert_HashingContext(value);
# #     return a.contains(value);
