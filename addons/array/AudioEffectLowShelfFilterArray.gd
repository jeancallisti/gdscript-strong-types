#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array
# in which the values are of type 'AudioEffectLowShelfFilter'.
# It is not meant to be attached to a AudioEffectLowShelfFilter (unless you want to!)
# You can generate more classes like this one for your own types.
class_name AudioEffectLowShelfFilterArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_nullable_AudioEffectLowShelfFilter(value: AudioEffectLowShelfFilter):
    if (value == null):
        return

    if (!(value is AudioEffectLowShelfFilter)):
        _crash("value was expected to be of type AudioEffectLowShelfFilter")

func _assert_not_null_AudioEffectLowShelfFilter(value: AudioEffectLowShelfFilter):
    if (!(value is AudioEffectLowShelfFilter)):
        _crash("value was expected to be of type AudioEffectLowShelfFilter")

func _assert_all_nullable_AudioEffectLowShelfFilter(values: Array):
    for v in values:
        _assert_nullable_AudioEffectLowShelfFilter(v)

func _assert_all_not_null_AudioEffectLowShelfFilter(values: Array):
    for v in values:
        _assert_not_null_AudioEffectLowShelfFilter(v)

func set_at(position: int, value: AudioEffectLowShelfFilter):
    _assert_not_null_AudioEffectLowShelfFilter(value);
    a[position] = value;

# Same as set_at but allows null
func set_at_nullable(position: int, value: AudioEffectLowShelfFilter):
    _assert_nullable_AudioEffectLowShelfFilter(value);
    a[position] = value;

func get_at(position: int) -> AudioEffectLowShelfFilter:
    return a[position];

func add(value: AudioEffectLowShelfFilter):
    _assert_not_null_AudioEffectLowShelfFilter(value);
    a.append(value);

# Same as add but allows null
func add_nullable(value: AudioEffectLowShelfFilter):
    _assert_nullable_AudioEffectLowShelfFilter(value);
    a.append(value);

# Same as add, but with a different name.
func append(value: AudioEffectLowShelfFilter):
    _assert_not_null_AudioEffectLowShelfFilter(value);
    a.append(value);

# Same as add_nullable, but with a different name.
func append_nullable(value: AudioEffectLowShelfFilter):
    _assert_nullable_AudioEffectLowShelfFilter(value);
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

# func Contains(value: AudioEffectLowShelfFilter) -> bool:
#     _assert_AudioEffectLowShelfFilter(value);
#     return a.contains(value);


func append_array(array: Array):
    _assert_all_not_null_AudioEffectLowShelfFilter(array);
    a.append_array(array);

func append_array_nullable(array: Array):
    _assert_all_nullable_AudioEffectLowShelfFilter(array);
    a.append_array(array);

func back() -> AudioEffectLowShelfFilter:
    return a.back();

# will implement later.
# For now, end-user must work with 'a' directly.
# int bsearch(value: Variant, before: bool = true)


# will implement later.
# For now, end-user must work with 'a' directly.
# int bsearch_custom(value: Variant, obj: Object, func: String, before: bool = true)

func count(value: AudioEffectLowShelfFilter) -> int:
    _assert_not_null_AudioEffectLowShelfFilter(value);
    return a.count(value);

func count_nullable(value: AudioEffectLowShelfFilter) -> int:
    _assert_nullable_AudioEffectLowShelfFilter(value);
    return a.count(value);

# will implement later.
# For now, end-user must work with 'a' directly.
# Array duplicate(deep: bool = false)

func is_empty() -> bool:
    return a.empty();

func erase(value: AudioEffectLowShelfFilter):
    _assert_not_null_AudioEffectLowShelfFilter(value);
    a.erase(value);

func erase_nullable(value: AudioEffectLowShelfFilter):
    _assert_nullable_AudioEffectLowShelfFilter(value);
    a.erase(value);

# TODO
# func fill(value: AudioEffectLowShelfFilter)

func find(value: AudioEffectLowShelfFilter) -> int:
    _assert_not_null_AudioEffectLowShelfFilter(value);
    return a.find(value);

func find_nullable(value: AudioEffectLowShelfFilter) -> int:
    _assert_nullable_AudioEffectLowShelfFilter(value);
    return a.find(value);

#TODO
# func find_last(value: AudioEffectLowShelfFilter)

# Returns the first element or crashes if empty
func front() -> AudioEffectLowShelfFilter:
    if (a.empty()):
        _crash("Array is empty");
    return a.front();

# Same as front, but more familiar name
func first() -> AudioEffectLowShelfFilter:
    if (a.empty()):
        _crash("Array is empty");
    return a.front();

# Returns the first element or null if empty
func first_or_default() -> AudioEffectLowShelfFilter:
    if (a.empty()):
        return null;
    return a.front();

func has(value: AudioEffectLowShelfFilter) -> bool:
    _assert_not_null_AudioEffectLowShelfFilter(value);
    return a.has(value);

func has_nullable(value: AudioEffectLowShelfFilter) -> bool:
    _assert_nullable_AudioEffectLowShelfFilter(value);
    return a.has(value);

func hash() -> int:
    return a.hash();

func insert(position: int, value: AudioEffectLowShelfFilter):
    _assert_not_null_AudioEffectLowShelfFilter(value);
    a.insert(position, value);

func insert_nullable(position: int, value: AudioEffectLowShelfFilter):
    _assert_not_null_AudioEffectLowShelfFilter(value);
    a.insert(position, value);

#TODO
#func invert()

func max() -> AudioEffectLowShelfFilter:
    var result: AudioEffectLowShelfFilter = a.max();
    if (result == null): # cf. manual
        _crash("Cannot search max in array. Type is not comparable.");
    return result;

func min() -> AudioEffectLowShelfFilter:
    var result: AudioEffectLowShelfFilter = a.min();
    if (result == null): # cf. manual
        _crash("Cannot search min in array. Type is not comparable.");
    return result;

func pop_at(position: int) -> AudioEffectLowShelfFilter:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    var result: AudioEffectLowShelfFilter = a.pop_at(position);
    if (result == null): # cf. manual
        _crash("Cannot pop from array. Position invalid");
    return result;

func pop_at_nullable(position: int) -> AudioEffectLowShelfFilter:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    if (position < 0 or position >= a.size()):
        _crash("Cannot pop from array. Position invalid");

    return a.pop_at(position);

func pop_back() -> AudioEffectLowShelfFilter:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    var result: AudioEffectLowShelfFilter = a.pop_back();
    if (result == null): # cf. manual
        _crash("Cannot pop from array (unexpected: null).");
    return result;

func pop_back_nullable() -> AudioEffectLowShelfFilter:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    return a.pop_back();


func pop_front() -> AudioEffectLowShelfFilter:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    var result: AudioEffectLowShelfFilter = a.pop_front();
    if (result == null): # cf. manual
        _crash("Cannot pop from array (unexpected: null).");
    return result;

func pop_front_nullable() -> AudioEffectLowShelfFilter:
    if (a.size() == 0):
        _crash("Cannot pop from empty array")

    return a.pop_front();


func push_back(value: AudioEffectLowShelfFilter):
    _assert_not_null_AudioEffectLowShelfFilter(value);
    a.push_back(value);

func push_back_nullable(value: AudioEffectLowShelfFilter):
    _assert_nullable_AudioEffectLowShelfFilter(value);
    a.push_back(value);


func push_front(value: AudioEffectLowShelfFilter):
    _assert_not_null_AudioEffectLowShelfFilter(value);
    a.push_front(value);

func push_front_nullable(value: AudioEffectLowShelfFilter):
    _assert_nullable_AudioEffectLowShelfFilter(value);
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

