#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of ScriptLanguageExtension.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'ScriptLanguageExtensionArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name ScriptLanguageExtensionArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_ScriptLanguageExtension(value: ScriptLanguageExtension):
    if (!value is ScriptLanguageExtension):
        _crash("value was expected to be of type ScriptLanguageExtension")

func _assert_not_null_ScriptLanguageExtension(value: ScriptLanguageExtension):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_ScriptLanguageExtension(value)

func SetAt(position: int, value: ScriptLanguageExtension):
    _assert_ScriptLanguageExtension(value);
    a[position] = value;

func GetAt(position: int) -> ScriptLanguageExtension:
    return a[position];

func Add(value: ScriptLanguageExtension):
    _assert_ScriptLanguageExtension(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: ScriptLanguageExtension):
    _assert_ScriptLanguageExtension(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: ScriptLanguageExtension) -> bool:
#     _assert_ScriptLanguageExtension(value);
#     return a.contains(value);

