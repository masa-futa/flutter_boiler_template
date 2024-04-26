import 'package:mvvm/model/todo_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_todo_view_model.g.dart';

@riverpod
class AddTodoViewModel extends _$AddTodoViewModel {
  AddTodoViewModel();

  @override
  Future<void> build({
    required String title,
    required String message,
  }) async {
    if (state.hasValue) {
      final isSuccess = await _addTodo(
        title: title,
        message: message,
      );
      if (!isSuccess) {
        throw Exception();
      }
    }
  }

  Future<bool> _addTodo({
    required String title,
    required String message,
  }) async {
    return await ref.read(todoModelProvider).addTodo(
          title: title,
          message: message,
          isDone: false,
        );
  }
}
