#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array
# in which the values are of type 'InputEventMouseButton'.
# It is not meant to be attached to a InputEventMouseButton (unless you want to!)
# You can generate more classes like this one for your own types.
class_name InputEventMouseButtonArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_nullable_InputEventMouseButton(value: InputEventMouseButton):
    if (value == null):
        return

    if (!(value is InputEventMouseButton)):
        _crash("value was expected to be of type InputEventMouseButton")

func _assert_not_null_InputEventMouseButton(value: InputEventMouseButton):
    if (!(value is InputEventMouseButton)):
        _crash("value was expected to be of type InputEventMouseButton")

func _assert_all_nullable_InputEventMouseButton(values: Array):
    for v in values:
        _assert_nullable_InputEventMouseButton(v)

func _assert_all_not_null_InputEventMouseButton(values: Array):
    for v in values:
        _assert_not_null_InputEventMouseButton(v)

func set_at(position: int, value: InputEventMouseButton):
    _assert_not_null_InputEventMouseButton(value);
    a[position] = value;

# Same as set_at but allows null
func set_at_nullable(position: int, value: InputEventMouseButton):
    _assert_nullable_InputEventMouseButton(value);
    a[position] = value;

func get_at(position: int) -> InputEventMouseButton:
    return a[position];

func add(value: InputEventMouseButton):
    _assert_not_null_InputEventMouseButton(value);
    a.append(value);

# Same as add but allows null
func add_nullable(value: InputEventMouseButton):
    _assert_nullable_InputEventMouseButton(value);
    a.append(value);

# Same as add, but with a different name.
func append(value: InputEventMouseButton):
    _assert_not_null_InputEventMouseButton(value);
    a.append(value);

# Same as add_nullable, but with a different name.
func append_nullable(value: InputEventMouseButton):
    _assert_nullable_InputEventMouseButton(value);
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

# func Contains(value: InputEventMouseButton) -> bool:
#     _assert_InputEventMouseButton(value);
#     return a.contains(value);


func append_array(array: Array):
    _assert_all_not_null_InputEventMouseButton(array);
    a.append_array(array);

func append_array_nullable(array: Array):
    _assert_all_nullable_InputEventMouseButton(array);
    a.append_array(array);

func back() -> InputEventMouseButton:
    return a.back();

# will implement later.
# For now, end-user must work with 'a' directly.
# int bsearch(value: Variant, before: bool = true)


# will implement later.
# For now, end-user must work with 'a' directly.
# int bsearch_custom(value: Variant, obj: Object, func: String, before: bool = true)

func count(value: InputEventMouseButton) -> int:
    _assert_not_null_InputEventMouseButton(value);
    return a.count(value);

func count_nullable(value: InputEventMouseButton) -> int:
    _assert_nullable_InputEventMouseButton(value);
    return a.count(value);

# will implement later.
# For now, end-user must work with 'a' directly.
# Array duplicate(deep: bool = false)

func is_empty() -> bool:
    return a.empty();

func erase(value: InputEventMouseButton):
    _assert_not_null_InputEventMouseButton(value);
    a.erase(value);

func erase_nullable(value: InputEventMouseButton):
    _assert_nullable_InputEventMouseButton(value);
    a.erase(value);

# TODO
# func fill(value: InputEventMouseButton)

func find(value: InputEventMouseButton) -> int:
    _assert_not_null_InputEventMouseButton(value);
    return a.find(value);

func find_nullable(value: InputEventMouseButton) -> int:
    _assert_nullable_InputEventMouseButton(value);
    return a.find(value);

#TODO
# func find_last(value: InputEventMouseButton)

# Returns the first element or crashes if empty
func front() -> InputEventMouseButton:
    if (a.empty()):
        _crash("Array is empty");
    return a.front();

# Same as front, but more familiar name
func first() -> InputEventMouseButton:
    if (a.empty()):
        _crash("Array is empty");
    return a.front();

# Returns the first element or null if empty
func first_or_default() -> InputEventMouseButton:
    if (a.empty()):
        return null;
    return a.front();

func has(value: InputEventMouseButton) -> bool:
    _assert_not_null_InputEventMouseButton(value);
    return a.has(value);

func has_nullable(value: InputEventMouseButton) -> bool:
    _assert_nullable_InputEventMouseButton(value);
    return a.has(value);

func hash() -> int:
    return a.hash();

func insert(position: int, value: InputEventMouseButton):
    _assert_not_null_InputEventMouseButton(value);
    a.insert(position, value);

func insert_nullable(position: int, value: InputEventMouseButton):
    _assert_not_null_InputEventMouseButton(value);
    a.insert(position, value);

#TODO
#func invert()

func max() -> InputEventMouseButton:
    var result: InputEventMouseButton = a.max();
    if (result == null): # cf. manual
        _crash("Cannot search max in array. Type is not comparable.");
    return result;

func min() -> InputEventMouseButton:
    var result: InputEventMouseButton = a.min();
    if (result == null): # cf. manual
        _crash("Cannot search min in array. Type is not comparable.");
    return result;

func pop_at(position: int) -> InputEventMouseButton:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    var result: InputEventMouseButton = a.pop_at(position);
    if (result == null): # cf. manual
        _crash("Cannot pop from array. Position invalid");
    return result;

func pop_at_nullable(position: int) -> InputEventMouseButton:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    if (position < 0 or position >= a.size()):
        _crash("Cannot pop from array. Position invalid");

    return a.pop_at(position);

func pop_back() -> InputEventMouseButton:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    var result: InputEventMouseButton = a.pop_back();
    if (result == null): # cf. manual
        _crash("Cannot pop from array (unexpected: null).");
    return result;

func pop_back_nullable() -> InputEventMouseButton:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    return a.pop_back();


func pop_front() -> InputEventMouseButton:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    var result: InputEventMouseButton = a.pop_front();
    if (result == null): # cf. manual
        _crash("Cannot pop from array (unexpected: null).");
    return result;

func pop_front_nullable() -> InputEventMouseButton:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    return a.pop_front();


func push_back(value: InputEventMouseButton):
    _assert_not_null_InputEventMouseButton(value);
    a.push_back(value);

func push_back_nullable(value: InputEventMouseButton):
    _assert_nullable_InputEventMouseButton(value);
    a.push_back(value);


func push_front(value: InputEventMouseButton):
    _assert_not_null_InputEventMouseButton(value);
    a.push_front(value);

func push_front_nullable(value: InputEventMouseButton):
    _assert_nullable_InputEventMouseButton(value);
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

