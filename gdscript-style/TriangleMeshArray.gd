#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of TriangleMesh.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'TriangleMeshArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

# class_name TriangleMeshArray

# var a:Array = [];

# func _crash(message: String):
#     assert(false, message)

# func _assert_TriangleMesh(value: TriangleMesh):
#     if (!value is TriangleMesh):
#         _crash("value was expected to be of type TriangleMesh")

# func _assert_not_null_TriangleMesh(value: TriangleMesh):
#     if (value == null):
#         _crash("value was expected to be not null")
#     _assert_TriangleMesh(value)

# func set_at(position: int, value: TriangleMesh):
#     _assert_TriangleMesh(value);
#     a[position] = value;

# func get_at(position: int) -> TriangleMesh:
#     return a[position];

# func add(value: TriangleMesh):
#     _assert_TriangleMesh(value);
#     a.append(value);

# Same as add, but with a different name.
# func append(value: TriangleMesh):
#     _assert_TriangleMesh(value);
#     a.append(value);

# func remove(position: int):
#     a.remove(position);

# func size() -> int:
#     return a.size();

# func clear():
#     a.clear();

# # func Contains(value: TriangleMesh) -> bool:
# #     _assert_TriangleMesh(value);
# #     return a.contains(value);

