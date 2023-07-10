#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of ImageFormatLoaderExtension.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'ImageFormatLoaderExtensionArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

# class_name ImageFormatLoaderExtensionArray

# var a:Array = [];

# func _crash(message: String):
#     assert(false, message)

# func _assert_ImageFormatLoaderExtension(value: ImageFormatLoaderExtension):
#     if (!value is ImageFormatLoaderExtension):
#         _crash("value was expected to be of type ImageFormatLoaderExtension")

# func _assert_not_null_ImageFormatLoaderExtension(value: ImageFormatLoaderExtension):
#     if (value == null):
#         _crash("value was expected to be not null")
#     _assert_ImageFormatLoaderExtension(value)

# func set_at(position: int, value: ImageFormatLoaderExtension):
#     _assert_ImageFormatLoaderExtension(value);
#     a[position] = value;

# func get_at(position: int) -> ImageFormatLoaderExtension:
#     return a[position];

# func add(value: ImageFormatLoaderExtension):
#     _assert_ImageFormatLoaderExtension(value);
#     a.append(value);

# Same as add, but with a different name.
# func append(value: ImageFormatLoaderExtension):
#     _assert_ImageFormatLoaderExtension(value);
#     a.append(value);

# func remove(position: int):
#     a.remove(position);

# func size() -> int:
#     return a.size();

# func clear():
#     a.clear();

# # func Contains(value: ImageFormatLoaderExtension) -> bool:
# #     _assert_ImageFormatLoaderExtension(value);
# #     return a.contains(value);

