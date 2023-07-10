#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of CryptoKey.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'CryptoKeyArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name CryptoKeyArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_CryptoKey(value: CryptoKey):
    if (!value is CryptoKey):
        _crash("value was expected to be of type CryptoKey")

func _assert_not_null_CryptoKey(value: CryptoKey):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_CryptoKey(value)

func SetAt(position: int, value: CryptoKey):
    _assert_CryptoKey(value);
    a[position] = value;

func GetAt(position: int) -> CryptoKey:
    return a[position];

func Add(value: CryptoKey):
    _assert_CryptoKey(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: CryptoKey):
    _assert_CryptoKey(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: CryptoKey) -> bool:
#     _assert_CryptoKey(value);
#     return a.contains(value);

