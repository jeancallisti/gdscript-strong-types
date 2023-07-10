#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of Resource.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'ResourceArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name ResourceArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_Resource(value: Resource):
    if (!value is Resource):
        _crash("value was expected to be of type Resource")

func _assert_not_null_Resource(value: Resource):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_Resource(value)

func SetAt(position: int, value: Resource):
    _assert_Resource(value);
    a[position] = value;

func GetAt(position: int) -> Resource:
    return a[position];

func Add(value: Resource):
    _assert_Resource(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: Resource):
    _assert_Resource(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: Resource) -> bool:
#     _assert_Resource(value);
#     return a.contains(value);
