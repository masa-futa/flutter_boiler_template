import 'package:sample_server/src/generated/todo.dart';
import 'package:serverpod/serverpod.dart';

class TodoEndpoint extends Endpoint {
  Future<List<Todo>> getTodos(Session session) async {
    return await Todo.db.find(session);
  }

  Future<void> add(Session session, Todo todo) async {
    await Todo.db.insertRow(session, todo);
  }

  Future<void> update(Session session, Todo todo) async {
    final filterTodo = await Todo.db.findById(session, todo.id!);
    if (filterTodo == null) {
      throw ArgumentError('Todo not found.');
    }
    filterTodo
      ..title = todo.title
      ..message = todo.message
      ..done = todo.done;
    await Todo.db.updateRow(session, filterTodo);
  }

  Future<void> delete(Session session, int? id) async {
    if (id == null) {
      throw ArgumentError('Todo must have an id.');
    }
    final filterTodo = await Todo.db.findById(session, id);
    await Todo.db.deleteRow(session, filterTodo!);
  }
}
