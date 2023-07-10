#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of AStarGrid2D.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'AStarGrid2DArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name AStarGrid2DArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_AStarGrid2D(value: AStarGrid2D):
    if (!value is AStarGrid2D):
        _crash("value was expected to be of type AStarGrid2D")

func _assert_not_null_AStarGrid2D(value: AStarGrid2D):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_AStarGrid2D(value)

func SetAt(position: int, value: AStarGrid2D):
    _assert_AStarGrid2D(value);
    a[position] = value;

func GetAt(position: int) -> AStarGrid2D:
    return a[position];

func Add(value: AStarGrid2D):
    _assert_AStarGrid2D(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: AStarGrid2D):
    _assert_AStarGrid2D(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: AStarGrid2D) -> bool:
#     _assert_AStarGrid2D(value);
#     return a.contains(value);

