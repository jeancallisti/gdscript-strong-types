#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of InputEventScreenTouch.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'InputEventScreenTouchArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name InputEventScreenTouchArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_InputEventScreenTouch(value: InputEventScreenTouch):
    if (!value is InputEventScreenTouch):
        _crash("value was expected to be of type InputEventScreenTouch")

func _assert_not_null_InputEventScreenTouch(value: InputEventScreenTouch):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_InputEventScreenTouch(value)

func SetAt(position: int, value: InputEventScreenTouch):
    _assert_InputEventScreenTouch(value);
    a[position] = value;

func GetAt(position: int) -> InputEventScreenTouch:
    return a[position];

func Add(value: InputEventScreenTouch):
    _assert_InputEventScreenTouch(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: InputEventScreenTouch):
    _assert_InputEventScreenTouch(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: InputEventScreenTouch) -> bool:
#     _assert_InputEventScreenTouch(value);
#     return a.contains(value);
