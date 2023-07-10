#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of PacketPeerStream.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'PacketPeerStreamArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

# class_name PacketPeerStreamArray

# var a:Array = [];

# func _crash(message: String):
#     assert(false, message)

# func _assert_PacketPeerStream(value: PacketPeerStream):
#     if (!value is PacketPeerStream):
#         _crash("value was expected to be of type PacketPeerStream")

# func _assert_not_null_PacketPeerStream(value: PacketPeerStream):
#     if (value == null):
#         _crash("value was expected to be not null")
#     _assert_PacketPeerStream(value)

# func set_at(position: int, value: PacketPeerStream):
#     _assert_PacketPeerStream(value);
#     a[position] = value;

# func get_at(position: int) -> PacketPeerStream:
#     return a[position];

# func add(value: PacketPeerStream):
#     _assert_PacketPeerStream(value);
#     a.append(value);

# Same as add, but with a different name.
# func append(value: PacketPeerStream):
#     _assert_PacketPeerStream(value);
#     a.append(value);

# func remove(position: int):
#     a.remove(position);

# func size() -> int:
#     return a.size();

# func clear():
#     a.clear();

# # func Contains(value: PacketPeerStream) -> bool:
# #     _assert_PacketPeerStream(value);
# #     return a.contains(value);

