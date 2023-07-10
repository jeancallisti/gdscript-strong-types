#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of WeakRef.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'WeakRefArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name WeakRefArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_WeakRef(value: WeakRef):
    if (!value is WeakRef):
        _crash("value was expected to be of type WeakRef")

func _assert_not_null_WeakRef(value: WeakRef):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_WeakRef(value)

func SetAt(position: int, value: WeakRef):
    _assert_WeakRef(value);
    a[position] = value;

func GetAt(position: int) -> WeakRef:
    return a[position];

func Add(value: WeakRef):
    _assert_WeakRef(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: WeakRef):
    _assert_WeakRef(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: WeakRef) -> bool:
#     _assert_WeakRef(value);
#     return a.contains(value);
