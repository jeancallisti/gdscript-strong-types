#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of GDExtensionManager.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'GDExtensionManagerArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

# class_name GDExtensionManagerArray

# var a:Array = [];

# func _crash(message: String):
#     assert(false, message)

# func _assert_GDExtensionManager(value: GDExtensionManager):
#     if (!value is GDExtensionManager):
#         _crash("value was expected to be of type GDExtensionManager")

# func _assert_not_null_GDExtensionManager(value: GDExtensionManager):
#     if (value == null):
#         _crash("value was expected to be not null")
#     _assert_GDExtensionManager(value)

# func set_at(position: int, value: GDExtensionManager):
#     _assert_GDExtensionManager(value);
#     a[position] = value;

# func get_at(position: int) -> GDExtensionManager:
#     return a[position];

# func add(value: GDExtensionManager):
#     _assert_GDExtensionManager(value);
#     a.append(value);

# Same as add, but with a different name.
# func append(value: GDExtensionManager):
#     _assert_GDExtensionManager(value);
#     a.append(value);

# func remove(position: int):
#     a.remove(position);

# func size() -> int:
#     return a.size();

# func clear():
#     a.clear();

# # func Contains(value: GDExtensionManager) -> bool:
# #     _assert_GDExtensionManager(value);
# #     return a.contains(value);
