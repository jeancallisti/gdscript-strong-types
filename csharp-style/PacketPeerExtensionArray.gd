#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of PacketPeerExtension.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'PacketPeerExtensionArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

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
    _assert_PacketPeerExtension(value)

func SetAt(position: int, value: PacketPeerExtension):
    _assert_PacketPeerExtension(value);
    a[position] = value;

func GetAt(position: int) -> PacketPeerExtension:
    return a[position];

func Add(value: PacketPeerExtension):
    _assert_PacketPeerExtension(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: PacketPeerExtension):
    _assert_PacketPeerExtension(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: PacketPeerExtension) -> bool:
#     _assert_PacketPeerExtension(value);
#     return a.contains(value);

