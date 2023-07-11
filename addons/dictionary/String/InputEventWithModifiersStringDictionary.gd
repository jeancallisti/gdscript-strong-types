#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent a Dictionary
# where keys are of type 'String' and values of type 'InputEventWithModifiers'.
# It is not meant to be attached to a Node (unless you want to!)
# You can generate more classes like this one for your own types.
class_name InputEventWithModifiersDictionary

var d: Dictionary = {}

# gdscript constructor
func _init():
    pass

func _crash(message: String):
    assert(false, message)

func _assert_not_null(value):
    if (value == null):
        _crash("value was expected to be not null")

func _assert_String(value: String):
    if (!value is String):
        _crash("value was expected to be of type String")

func _assert_InputEventWithModifiers(value: InputEventWithModifiers):
    if (!value is InputEventWithModifiers):
        _crash("value was expected to be of type InputEventWithModifiers")

func set(key: String, value: InputEventWithModifiers):
    _assert_not_null(key)
    _assert_String(key)
    _assert_not_null(value)
    _assert_InputEventWithModifiers(value)
    d[key] = value

# same as set but allows null values
func set_nullable(key: String, value: InputEventWithModifiers):
    _assert_not_null(key)
    _assert_String(key)
    _assert_InputEventWithModifiers(value)
    d[key] = value

func get(key: String) -> InputEventWithModifiers:
    _assert_not_null(key)
    _assert_String(key)
    return d[key]	

func clear():
    d.clear()

func empty() -> bool:
    return d.empty()

func erase (key: String):
    d.erase(key) #ignore return value
        
func has(key: String) -> bool:
    _assert_not_null(key)
    _assert_String(key)
    return d.has(key)
    
func has_all(keys: Array) -> bool:
    for key in keys:
        _assert_not_null(key)
        _assert_String(key)

    return d.has_all(keys)

func hash() -> int:
    return d.hash()

func keys() -> Array: #TODO: Use our strongly-typed array
    return d.keys()

func size() -> int:
    return d.size()

func values() -> Array: #TODO: Use our strongly-typed array
    return d.values()
    
