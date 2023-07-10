#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of StreamPeerBuffer.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'StreamPeerBufferArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name StreamPeerBufferArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_StreamPeerBuffer(value: StreamPeerBuffer):
    if (!value is StreamPeerBuffer):
        _crash("value was expected to be of type StreamPeerBuffer")

func _assert_not_null_StreamPeerBuffer(value: StreamPeerBuffer):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_StreamPeerBuffer(value)

func SetAt(position: int, value: StreamPeerBuffer):
    _assert_StreamPeerBuffer(value);
    a[position] = value;

func GetAt(position: int) -> StreamPeerBuffer:
    return a[position];

func Add(value: StreamPeerBuffer):
    _assert_StreamPeerBuffer(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: StreamPeerBuffer):
    _assert_StreamPeerBuffer(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: StreamPeerBuffer) -> bool:
#     _assert_StreamPeerBuffer(value);
#     return a.contains(value);

