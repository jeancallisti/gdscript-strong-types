#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent a Dictionary
# where keys are of type 'String' and values of type 'WorldEnvironment'.
# It is not meant to be attached to a Node (unless you want to!)
# You can generate more classes like this one for your own types.
class_name WorldEnvironmentDictionary

var d: Dictionary = {}

# gdscript constructor
func _init():
    pass

func _crash(message: String):
    assert(false, message)


func _assert_not_null_String(value: String):
    if (!value is String):
        _crash("Was expecting type 'String'")

func _assert_not_null_WorldEnvironment(value: WorldEnvironment):
    if (!value is WorldEnvironment):
        _crash("Was expecting type 'WorldEnvironment'")

func _assert_nullable_WorldEnvironment(value: WorldEnvironment):
    if (value == null):
        return
    if (!value is WorldEnvironment):
        _crash("Was expecting type 'WorldEnvironment'")

func set(key: String, value: WorldEnvironment):
    _assert_not_null_String(key)
    _assert_not_null_WorldEnvironment(value)
    d[key] = value

# same as set but allows null values
func set_nullable(key: String, value: WorldEnvironment):
    _assert_not_null_String(key)
    _assert_nullable_WorldEnvironment(value)
    d[key] = value

func get(key: String) -> WorldEnvironment:
    _assert_not_null_String(key)
    return d[key]	

func clear():
    d.clear()

func empty() -> bool:
    return d.empty()

func erase (key: String):
    d.erase(key) #ignore return value
        
func has(key: String) -> bool:
    _assert_not_null_String(key)
    return d.has(key)
    
func has_all(keys: Array) -> bool:
    for key in keys:
        _assert_not_null_String(key)

    return d.has_all(keys)

func hash() -> int:
    return d.hash()

func keys() -> Array: #TODO: Use our strongly-typed array
    return d.keys()

func size() -> int:
    return d.size()

func values() -> Array: #TODO: Use our strongly-typed array
    return d.values()
    