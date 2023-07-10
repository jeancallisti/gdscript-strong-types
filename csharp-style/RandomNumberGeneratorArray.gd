#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of RandomNumberGenerator.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'RandomNumberGeneratorArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name RandomNumberGeneratorArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_RandomNumberGenerator(value: RandomNumberGenerator):
    if (!value is RandomNumberGenerator):
        _crash("value was expected to be of type RandomNumberGenerator")

func _assert_not_null_RandomNumberGenerator(value: RandomNumberGenerator):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_RandomNumberGenerator(value)

func SetAt(position: int, value: RandomNumberGenerator):
    _assert_RandomNumberGenerator(value);
    a[position] = value;

func GetAt(position: int) -> RandomNumberGenerator:
    return a[position];

func Add(value: RandomNumberGenerator):
    _assert_RandomNumberGenerator(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: RandomNumberGenerator):
    _assert_RandomNumberGenerator(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: RandomNumberGenerator) -> bool:
#     _assert_RandomNumberGenerator(value);
#     return a.contains(value);
