#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array
# in which the values are of type 'InputEventAction'.
# It is not meant to be attached to a InputEventAction (unless you want to!)
# You can generate more classes like this one for your own types.
class_name InputEventActionArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_nullable_InputEventAction(value: InputEventAction):
    if (value == null):
        return

    if (!(value is InputEventAction)):
        _crash("value was expected to be of type InputEventAction")

func _assert_not_null_InputEventAction(value: InputEventAction):
    if (!(value is InputEventAction)):
        _crash("value was expected to be of type InputEventAction")

func _assert_all_nullable_InputEventAction(values: Array):
    for v in values:
        _assert_nullable_InputEventAction(v)

func _assert_all_not_null_InputEventAction(values: Array):
    for v in values:
        _assert_not_null_InputEventAction(v)

func set_at(position: int, value: InputEventAction):
    _assert_not_null_InputEventAction(value);
    a[position] = value;

# Same as set_at but allows null
func set_at_nullable(position: int, value: InputEventAction):
    _assert_nullable_InputEventAction(value);
    a[position] = value;

func get_at(position: int) -> InputEventAction:
    return a[position];

func add(value: InputEventAction):
    _assert_not_null_InputEventAction(value);
    a.append(value);

# Same as add but allows null
func add_nullable(value: InputEventAction):
    _assert_nullable_InputEventAction(value);
    a.append(value);

# Same as add, but with a different name.
func append(value: InputEventAction):
    _assert_not_null_InputEventAction(value);
    a.append(value);

# Same as add_nullable, but with a different name.
func append_nullable(value: InputEventAction):
    _assert_nullable_InputEventAction(value);
    a.append(value);

func remove(position: int):
    a.remove(position);

func size() -> int:
    return a.size();

# Same as size but different name
func length() -> int:
    return a.size();

func clear():
    a.clear();

# func Contains(value: InputEventAction) -> bool:
#     _assert_InputEventAction(value);
#     return a.contains(value);


func append_array(array: Array):
    _assert_all_not_null_InputEventAction(array);
    a.append_array(array);

func append_array_nullable(array: Array):
    _assert_all_nullable_InputEventAction(array);
    a.append_array(array);

func back() -> InputEventAction:
    return a.back();

# will implement later.
# For now, end-user must work with 'a' directly.
# int bsearch(value: Variant, before: bool = true)


# will implement later.
# For now, end-user must work with 'a' directly.
# int bsearch_custom(value: Variant, obj: Object, func: String, before: bool = true)

func count(value: InputEventAction) -> int:
    _assert_not_null_InputEventAction(value);
    return a.count(value);

func count_nullable(value: InputEventAction) -> int:
    _assert_nullable_InputEventAction(value);
    return a.count(value);

# will implement later.
# For now, end-user must work with 'a' directly.
# Array duplicate(deep: bool = false)

func is_empty() -> bool:
    return a.empty();

func erase(value: InputEventAction):
    _assert_not_null_InputEventAction(value);
    a.erase(value);

func erase_nullable(value: InputEventAction):
    _assert_nullable_InputEventAction(value);
    a.erase(value);

# TODO
# func fill(value: InputEventAction)

func find(value: InputEventAction) -> int:
    _assert_not_null_InputEventAction(value);
    return a.find(value);

func find_nullable(value: InputEventAction) -> int:
    _assert_nullable_InputEventAction(value);
    return a.find(value);

#TODO
# func find_last(value: InputEventAction)

# Returns the first element or crashes if empty
func front() -> InputEventAction:
    if (a.empty()):
        _crash("Array is empty");
    return a.front();

# Same as front, but more familiar name
func first() -> InputEventAction:
    if (a.empty()):
        _crash("Array is empty");
    return a.front();

# Returns the first element or null if empty
func first_or_default() -> InputEventAction:
    if (a.empty()):
        return null;
    return a.front();

func has(value: InputEventAction) -> bool:
    _assert_not_null_InputEventAction(value);
    return a.has(value);

func has_nullable(value: InputEventAction) -> bool:
    _assert_nullable_InputEventAction(value);
    return a.has(value);

func hash() -> int:
    return a.hash();

func insert(position: int, value: InputEventAction):
    _assert_not_null_InputEventAction(value);
    a.insert(position, value);

func insert_nullable(position: int, value: InputEventAction):
    _assert_not_null_InputEventAction(value);
    a.insert(position, value);

#TODO
#func invert()

func max() -> InputEventAction:
    var result: InputEventAction = a.max();
    if (result == null): # cf. manual
        _crash("Cannot search max in array. Type is not comparable.");
    return result;

func min() -> InputEventAction:
    var result: InputEventAction = a.min();
    if (result == null): # cf. manual
        _crash("Cannot search min in array. Type is not comparable.");
    return result;

func pop_at(position: int) -> InputEventAction:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    var result: InputEventAction = a.pop_at(position);
    if (result == null): # cf. manual
        _crash("Cannot pop from array. Position invalid");
    return result;

func pop_at_nullable(position: int) -> InputEventAction:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    if (position < 0 or position >= a.size()):
        _crash("Cannot pop from array. Position invalid");

    return a.pop_at(position);

func pop_back() -> InputEventAction:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    var result: InputEventAction = a.pop_back();
    if (result == null): # cf. manual
        _crash("Cannot pop from array (unexpected: null).");
    return result;

func pop_back_nullable() -> InputEventAction:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    return a.pop_back();


func pop_front() -> InputEventAction:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    var result: InputEventAction = a.pop_front();
    if (result == null): # cf. manual
        _crash("Cannot pop from array (unexpected: null).");
    return result;

func pop_front_nullable() -> InputEventAction:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    return a.pop_front();


func push_back(value: InputEventAction):
    _assert_not_null_InputEventAction(value);
    a.push_back(value);

func push_back_nullable(value: InputEventAction):
    _assert_nullable_InputEventAction(value);
    a.push_back(value);


func push_front(value: InputEventAction):
    _assert_not_null_InputEventAction(value);
    a.push_front(value);

func push_front_nullable(value: InputEventAction):
    _assert_nullable_InputEventAction(value);
    a.push_back(value);

func remove_at(position: int):
    if (position < 0 or position >= a.size()):
        _crash("Cannot remove from array. Position invalid");
    a.remove(position);

# TODO
# func resize(size: int)

#TODO
# func rfind(what: Variant, from: int = -1)

# TODO
# func shuffle()

func slice_shallow(begin: int, end: int):
    if (begin < 0 or begin >= a.size()):
        _crash("Cannot slice. 'begin' invalid");
    if (end < 0 or end >= a.size()):
        _crash("Cannot slice. 'end' invalid");
    if (end<begin):
        _crash("Cannot slice. 'begin' or 'end' invalid");
    return a.slice(begin, end);

func slice_deep(begin: int, end: int):
    if (begin < 0 or begin >= a.size()):
        _crash("Cannot slice. 'begin' invalid");
    if (end < 0 or end >= a.size()):
        _crash("Cannot slice. 'end' invalid");
    if (end<begin):
        _crash("Cannot slice. 'begin' or 'end' invalid");
    return a.slice(begin, end, 1, true);

# TODO: Check the behaviour with types that are not comparable.
func sort():
    a.sort();

#TODO
# func sort_custom(obj: Object, func: String)

#TODO
# func Array(from: PoolByteArray)
# func Array(from: PoolIntArray)
# func Array(from: PoolRealArray)
# func Array(from: PoolStringArray)
# func Array(from: PoolVector2Array)
# func Array(from: PoolVector3Array)
# func Array(from: PoolColorArray)

