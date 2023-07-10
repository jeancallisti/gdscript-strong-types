#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of ResourceImporter.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'ResourceImporterArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

# class_name ResourceImporterArray

# var a:Array = [];

# func _crash(message: String):
#     assert(false, message)

# func _assert_ResourceImporter(value: ResourceImporter):
#     if (!value is ResourceImporter):
#         _crash("value was expected to be of type ResourceImporter")

# func _assert_not_null_ResourceImporter(value: ResourceImporter):
#     if (value == null):
#         _crash("value was expected to be not null")
#     _assert_ResourceImporter(value)

# func set_at(position: int, value: ResourceImporter):
#     _assert_ResourceImporter(value);
#     a[position] = value;

# func get_at(position: int) -> ResourceImporter:
#     return a[position];

# func add(value: ResourceImporter):
#     _assert_ResourceImporter(value);
#     a.append(value);

# Same as add, but with a different name.
# func append(value: ResourceImporter):
#     _assert_ResourceImporter(value);
#     a.append(value);

# func remove(position: int):
#     a.remove(position);

# func size() -> int:
#     return a.size();

# func clear():
#     a.clear();

# # func Contains(value: ResourceImporter) -> bool:
# #     _assert_ResourceImporter(value);
# #     return a.contains(value);
