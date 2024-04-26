import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mvvm/model/todo_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_view_model.freezed.dart';
part 'home_view_model.g.dart';

@freezed
class HomeViewState with _$HomeViewState {
  factory HomeViewState({
    required List<TodoViewState> todos,
  }) = _HomeViewState;
}

@freezed
class TodoViewState with _$TodoViewState {
  factory TodoViewState({
    int? id,
    required String title,
    required String message,
    required bool done,
    @Default(false) bool isDeleted,
  }) = _TodoViewState;
}

@riverpod
class HomeViewModel extends _$HomeViewModel {
  HomeViewModel();

  @override
  Future<HomeViewState> build() async {
    final todos = await getTodos();

    return HomeViewState(todos: todos);
  }

  Future<List<TodoViewState>> getTodos() async {
    final todos = await ref.read(todoModelProvider).getTodos();
    return Future.wait(
      todos
          .map(
            (e) async => TodoViewState(
              id: e.id,
              title: e.title,
              message: e.message,
              done: e.done,
            ),
          )
          .toList(),
    );
  }

  void changedTodo({required int id, required bool isDeleted}) {
    final todos = state.requireValue.todos.map(
      (e) {
        if (e.id == id) {
          return e.copyWith(isDeleted: isDeleted);
        }
        return e;
      },
    ).toList();
    state = AsyncData(HomeViewState(todos: todos));
  }

  Future<void> deleteTodo() async {
    await Future.wait(
      state.requireValue.todos.map(
        (e) async {
          if (e.isDeleted) {
            await ref.read(todoModelProvider).deleteTodo(id: e.id!);
          }
        },
      ),
    );
    final todos = await getTodos();
    state = AsyncData(HomeViewState(todos: todos));
  }
}
