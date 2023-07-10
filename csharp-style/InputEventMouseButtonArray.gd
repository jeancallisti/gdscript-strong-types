#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of InputEventMouseButton.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'InputEventMouseButtonArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name InputEventMouseButtonArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_InputEventMouseButton(value: InputEventMouseButton):
    if (!value is InputEventMouseButton):
        _crash("value was expected to be of type InputEventMouseButton")

func _assert_not_null_InputEventMouseButton(value: InputEventMouseButton):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_InputEventMouseButton(value)

func SetAt(position: int, value: InputEventMouseButton):
    _assert_InputEventMouseButton(value);
    a[position] = value;

func GetAt(position: int) -> InputEventMouseButton:
    return a[position];

func Add(value: InputEventMouseButton):
    _assert_InputEventMouseButton(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: InputEventMouseButton):
    _assert_InputEventMouseButton(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: InputEventMouseButton) -> bool:
#     _assert_InputEventMouseButton(value);
#     return a.contains(value);
