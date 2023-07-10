#-----------------------------------------------------------------
#
#           THIS FILE WAS AUTOGENERATED.
#
#           Visit https://github.com/jeancallisti/gdscript-strong-types
#
#
#-----------------------------------------------------------------


# This class is a utility class meant to represent an array of Crypto.
# it is not meant to be attached to a Node (unless you want to!)
# It exists in two versions (both named 'CryptoArray'): The one in CSharp style (CapitalLetters) or the one in GDScript style (snake_case).
# Just uncomment the version you like the most.

class_name CryptoArray

var a:Array = [];

func _crash(message: String):
    assert(false, message)

func _assert_Crypto(value: Crypto):
    if (!value is Crypto):
        _crash("value was expected to be of type Crypto")

func _assert_not_null_Crypto(value: Crypto):
    if (value == null):
        _crash("value was expected to be not null")
    _assert_Crypto(value)

func SetAt(position: int, value: Crypto):
    _assert_Crypto(value);
    a[position] = value;

func GetAt(position: int) -> Crypto:
    return a[position];

func Add(value: Crypto):
    _assert_Crypto(value);
    a.append(value);

# Same as Add, but with a different name.
func Append(value: Crypto):
    _assert_Crypto(value);
    a.append(value);

func Remove(position: int):
    a.remove(position);

func Size() -> int:
    return a.size();

func Clear():
    a.clear();

# func Contains(value: Crypto) -> bool:
#     _assert_Crypto(value);
#     return a.contains(value);

