#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of Semaphore.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'SemaphoreArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name SemaphoreArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_Semaphore(value: Semaphore):
    if (!value is Semaphore):
        _crash("value was expected to be of type Semaphore")

func _assert_not_null_Semaphore(value: Semaphore):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_Semaphore(value)

func SetAt(position: int, value: Semaphore):
    _assert_Semaphore(value);
    a[position] = value;

func GetAt(position: int) -> Semaphore:
    return a[position];

func Add(value: Semaphore):
    _assert_Semaphore(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: Semaphore):
    _assert_Semaphore(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: Semaphore) -> bool:
#     _assert_Semaphore(value);
#     return a.contains(value);
