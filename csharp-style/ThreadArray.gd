#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of Thread.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'ThreadArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name ThreadArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_Thread(value: Thread):
    if (!value is Thread):
        _crash("value was expected to be of type Thread")

func _assert_not_null_Thread(value: Thread):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_Thread(value)

func SetAt(position: int, value: Thread):
    _assert_Thread(value);
    a[position] = value;

func GetAt(position: int) -> Thread:
    return a[position];

func Add(value: Thread):
    _assert_Thread(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: Thread):
    _assert_Thread(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: Thread) -> bool:
#     _assert_Thread(value);
#     return a.contains(value);

