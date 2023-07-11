#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array
# in which the values are of type 'PacketPeerExtension'.
# It is not meant to be attached to a Node (unless you want to!)
# You can generate more classes like this one for your own types.
class_name PacketPeerExtensionArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_PacketPeerExtension(value: PacketPeerExtension):
    if (!value is PacketPeerExtension):
        _crash("value was expected to be of type PacketPeerExtension")

func _assert_not_null_PacketPeerExtension(value: PacketPeerExtension):
    if (value == null):
        _crash("value was expected to be not null")

func set_at(position: int, value: PacketPeerExtension):
    _assert_not_null_PacketPeerExtension(value);
    _assert_PacketPeerExtension(value);
    a[position] = value;

# Same as set_at but allows null
func set_at_nullable(position: int, value: PacketPeerExtension):
    _assert_PacketPeerExtension(value);
    a[position] = value;

func get_at(position: int) -> PacketPeerExtension:
    return a[position];

func add(value: PacketPeerExtension):
    _assert_not_null_PacketPeerExtension(value);
    _assert_PacketPeerExtension(value);
    a.append(value);

# Same as add but allows null
func add_nullable(value: PacketPeerExtension):
    _assert_PacketPeerExtension(value);
    a.append(value);

# Same as add, but with a different name.
func append(value: PacketPeerExtension):
    _assert_not_null_PacketPeerExtension(value);
    _assert_PacketPeerExtension(value);
    a.append(value);

# Same as add_nullable, but with a different name.
func append_nullable(value: PacketPeerExtension):
    _assert_PacketPeerExtension(value);
    a.append(value);

func remove(position: int):
    a.remove(position);

func size() -> int:
    return a.size();

func clear():
    a.clear();

# func Contains(value: PacketPeerExtension) -> bool:
#     _assert_PacketPeerExtension(value);
#     return a.contains(value);

