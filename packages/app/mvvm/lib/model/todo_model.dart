import 'package:mvvm/model/api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sample_client/sample_client.dart';

part 'todo_model.g.dart';

@Riverpod(keepAlive: true)
TodoModel todoModel(TodoModelRef ref) =>
    TodoModel(client: ref.read(clientProvider));

class TodoModel {
  TodoModel({required this.client});

  final Client client;

  Future<List<Todo>> getTodos() async {
    return client.todo.getTodos();
  }

  Future<bool> addTodo({
    required String title,
    required String message,
    required bool isDone,
  }) async {
    try {
      await client.todo.add(
        Todo(title: title, message: message, done: isDone),
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<void> deleteTodo({
    required int id,
  }) async {
    await client.todo.delete(id);
  }
}
