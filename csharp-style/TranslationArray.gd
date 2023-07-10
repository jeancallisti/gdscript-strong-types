#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of Translation.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'TranslationArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name TranslationArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_Translation(value: Translation):
    if (!value is Translation):
        _crash("value was expected to be of type Translation")

func _assert_not_null_Translation(value: Translation):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_Translation(value)

func SetAt(position: int, value: Translation):
    _assert_Translation(value);
    a[position] = value;

func GetAt(position: int) -> Translation:
    return a[position];

func Add(value: Translation):
    _assert_Translation(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: Translation):
    _assert_Translation(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: Translation) -> bool:
#     _assert_Translation(value);
#     return a.contains(value);
