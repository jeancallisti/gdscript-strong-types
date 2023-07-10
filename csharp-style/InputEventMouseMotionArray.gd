#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of InputEventMouseMotion.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'InputEventMouseMotionArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name InputEventMouseMotionArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_InputEventMouseMotion(value: InputEventMouseMotion):
    if (!value is InputEventMouseMotion):
        _crash("value was expected to be of type InputEventMouseMotion")

func _assert_not_null_InputEventMouseMotion(value: InputEventMouseMotion):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_InputEventMouseMotion(value)

func SetAt(position: int, value: InputEventMouseMotion):
    _assert_InputEventMouseMotion(value);
    a[position] = value;

func GetAt(position: int) -> InputEventMouseMotion:
    return a[position];

func Add(value: InputEventMouseMotion):
    _assert_InputEventMouseMotion(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: InputEventMouseMotion):
    _assert_InputEventMouseMotion(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: InputEventMouseMotion) -> bool:
#     _assert_InputEventMouseMotion(value);
#     return a.contains(value);
