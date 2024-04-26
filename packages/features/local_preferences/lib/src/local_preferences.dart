import 'package:shared_preferences/shared_preferences.dart';

class LocalPreferences {
  LocalPreferences._();

  late final SharedPreferences _preferences;

  // must call
  Future<void> initialize() async {
    _preferences = await SharedPreferences.getInstance();
  }

  ValueType getValue(KeyType keyType) => switch (keyType.typeObject) {
        TypeObject.i =>
          ValueType.i(keyType.key, _preferences.getInt(keyType.key)),
        TypeObject.b =>
          ValueType.b(keyType.key, _preferences.getBool(keyType.key)),
        TypeObject.d =>
          ValueType.d(keyType.key, _preferences.getDouble(keyType.key)),
        TypeObject.s =>
          ValueType.s(keyType.key, _preferences.getString(keyType.key)),
        TypeObject.l =>
          ValueType.l(keyType.key, _preferences.getStringList(keyType.key)),
      };

  void setValue(ValueType valueType) => switch (valueType.typeObject) {
        TypeObject.i => _preferences.setInt(valueType.key, valueType.value),
        TypeObject.b => _preferences.setBool(valueType.key, valueType.value),
        TypeObject.d => _preferences.setDouble(valueType.key, valueType.value),
        TypeObject.s => _preferences.setString(valueType.key, valueType.value),
        TypeObject.l =>
          _preferences.setStringList(valueType.key, valueType.value),
      };
}

class KeyType<T> {
  KeyType._(this.key, this.typeObject);

  final String key;
  final TypeObject typeObject;

  static KeyType s<T extends String>(String key) {
    return KeyType._(key, TypeObject.s);
  }

  static KeyType i<T extends int>(String key) {
    return KeyType._(key, TypeObject.i);
  }

  static KeyType d<T extends double>(String key) {
    return KeyType._(key, TypeObject.d);
  }

  static KeyType b<T extends bool>(String key) {
    return KeyType._(key, TypeObject.b);
  }

  static KeyType l<T extends List<String>>(String key) {
    return KeyType._(key, TypeObject.l);
  }
}

class ValueType<T> {
  ValueType._(this.key, this.value, this.typeObject);

  final String key;
  final T? value;
  final TypeObject typeObject;

  static ValueType s<T extends String>(String key, T? value) {
    return ValueType._(key, value, TypeObject.s);
  }

  static ValueType i<T extends int>(String key, T? value) {
    return ValueType._(key, value, TypeObject.i);
  }

  static ValueType d<T extends double>(String key, T? value) {
    return ValueType._(key, value, TypeObject.d);
  }

  static ValueType b<T extends bool>(String key, T? value) {
    return ValueType._(key, value, TypeObject.b);
  }

  static ValueType l<T extends List<String>>(String key, T? value) {
    return ValueType._(key, value, TypeObject.l);
  }
}

enum TypeObject { i, b, d, s, l }
