#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of InputEventWithModifiers.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'InputEventWithModifiersArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name InputEventWithModifiersArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_InputEventWithModifiers(value: InputEventWithModifiers):
    if (!value is InputEventWithModifiers):
        _crash("value was expected to be of type InputEventWithModifiers")

func _assert_not_null_InputEventWithModifiers(value: InputEventWithModifiers):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_InputEventWithModifiers(value)

func SetAt(position: int, value: InputEventWithModifiers):
    _assert_InputEventWithModifiers(value);
    a[position] = value;

func GetAt(position: int) -> InputEventWithModifiers:
    return a[position];

func Add(value: InputEventWithModifiers):
    _assert_InputEventWithModifiers(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: InputEventWithModifiers):
    _assert_InputEventWithModifiers(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: InputEventWithModifiers) -> bool:
#     _assert_InputEventWithModifiers(value);
#     return a.contains(value);

