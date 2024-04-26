/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Todo extends _i1.SerializableEntity {
  Todo._({
    this.id,
    required this.title,
    required this.message,
    required this.done,
  });

  factory Todo({
    int? id,
    required String title,
    required String message,
    required bool done,
  }) = _TodoImpl;

  factory Todo.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Todo(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      message: serializationManager
          .deserialize<String>(jsonSerialization['message']),
      done: serializationManager.deserialize<bool>(jsonSerialization['done']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String message;

  bool done;

  Todo copyWith({
    int? id,
    String? title,
    String? message,
    bool? done,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'message': message,
      'done': done,
    };
  }
}

class _Undefined {}

class _TodoImpl extends Todo {
  _TodoImpl({
    int? id,
    required String title,
    required String message,
    required bool done,
  }) : super._(
          id: id,
          title: title,
          message: message,
          done: done,
        );

  @override
  Todo copyWith({
    Object? id = _Undefined,
    String? title,
    String? message,
    bool? done,
  }) {
    return Todo(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      message: message ?? this.message,
      done: done ?? this.done,
    );
  }
}
