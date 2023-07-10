#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of StreamPeerGZIP.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'StreamPeerGZIPArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name StreamPeerGZIPArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_StreamPeerGZIP(value: StreamPeerGZIP):
    if (!value is StreamPeerGZIP):
        _crash("value was expected to be of type StreamPeerGZIP")

func _assert_not_null_StreamPeerGZIP(value: StreamPeerGZIP):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_StreamPeerGZIP(value)

func SetAt(position: int, value: StreamPeerGZIP):
    _assert_StreamPeerGZIP(value);
    a[position] = value;

func GetAt(position: int) -> StreamPeerGZIP:
    return a[position];

func Add(value: StreamPeerGZIP):
    _assert_StreamPeerGZIP(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: StreamPeerGZIP):
    _assert_StreamPeerGZIP(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: StreamPeerGZIP) -> bool:
#     _assert_StreamPeerGZIP(value);
#     return a.contains(value);
