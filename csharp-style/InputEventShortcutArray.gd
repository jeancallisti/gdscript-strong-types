#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of InputEventShortcut.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'InputEventShortcutArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name InputEventShortcutArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_InputEventShortcut(value: InputEventShortcut):
    if (!value is InputEventShortcut):
        _crash("value was expected to be of type InputEventShortcut")

func _assert_not_null_InputEventShortcut(value: InputEventShortcut):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_InputEventShortcut(value)

func SetAt(position: int, value: InputEventShortcut):
    _assert_InputEventShortcut(value);
    a[position] = value;

func GetAt(position: int) -> InputEventShortcut:
    return a[position];

func Add(value: InputEventShortcut):
    _assert_InputEventShortcut(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: InputEventShortcut):
    _assert_InputEventShortcut(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: InputEventShortcut) -> bool:
#     _assert_InputEventShortcut(value);
#     return a.contains(value);
