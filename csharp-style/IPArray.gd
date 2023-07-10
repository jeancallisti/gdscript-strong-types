#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of IP.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'IPArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name IPArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_IP(value: IP):
    if (!value is IP):
        _crash("value was expected to be of type IP")

func _assert_not_null_IP(value: IP):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_IP(value)

func SetAt(position: int, value: IP):
    _assert_IP(value);
    a[position] = value;

func GetAt(position: int) -> IP:
    return a[position];

func Add(value: IP):
    _assert_IP(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: IP):
    _assert_IP(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: IP) -> bool:
#     _assert_IP(value);
#     return a.contains(value);
