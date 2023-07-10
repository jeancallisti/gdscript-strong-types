#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of WorkerThreadPool.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'WorkerThreadPoolArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name WorkerThreadPoolArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_WorkerThreadPool(value: WorkerThreadPool):
    if (!value is WorkerThreadPool):
        _crash("value was expected to be of type WorkerThreadPool")

func _assert_not_null_WorkerThreadPool(value: WorkerThreadPool):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_WorkerThreadPool(value)

func SetAt(position: int, value: WorkerThreadPool):
    _assert_WorkerThreadPool(value);
    a[position] = value;

func GetAt(position: int) -> WorkerThreadPool:
    return a[position];

func Add(value: WorkerThreadPool):
    _assert_WorkerThreadPool(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: WorkerThreadPool):
    _assert_WorkerThreadPool(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: WorkerThreadPool) -> bool:
#     _assert_WorkerThreadPool(value);
#     return a.contains(value);

