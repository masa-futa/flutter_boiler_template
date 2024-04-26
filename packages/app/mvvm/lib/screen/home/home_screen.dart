import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm/screen/add_todo/add_todo_screen.dart';
import 'package:mvvm/screen/todo_detail/todo_detail_screen.dart';
import 'package:mvvm/util/router/app_router.dart';
import 'package:mvvm/view_model/home/home_view_model.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  static String path = '/';
  static String name = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isShowDeleteButton = useState(false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _FloatingButton(
            onTap: () async {
              isShowDeleteButton.value = !isShowDeleteButton.value;
            },
            icon: isShowDeleteButton.value
                ? const Icon(Icons.filter_alt)
                : const Icon(Icons.filter_alt_off),
          ),
          const SizedBox(height: 16),
          _FloatingButton(
            onTap: () async {
              await AppRouter.push(context, AddTodoScreen.name);
              ref.invalidate(homeViewModelProvider);
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: switch (ref.watch(homeViewModelProvider)) {
        AsyncError(:final error) => Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Error',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    error.toString(),
                    style: const TextStyle(
                      color: Colors.redAccent,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        AsyncData(:final value) => value.todos.isEmpty
            ? const Center(child: Text('There is no todo list'))
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => _TodoTile(
                          todo: value.todos[index],
                          isShowDeleteButton: isShowDeleteButton.value,
                          onChanged: (isChanged) {
                            ref
                                .watch(homeViewModelProvider.notifier)
                                .changedTodo(
                                  id: value.todos[index].id!,
                                  isDeleted: isChanged,
                                );
                          },
                        ),
                        itemCount: value.todos.length,
                      ),
                      if (isShowDeleteButton.value)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                ref
                                    .watch(homeViewModelProvider.notifier)
                                    .deleteTodo();
                              },
                              child: const Text('削除'),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}

class _TodoTile extends StatelessWidget {
  const _TodoTile({
    required this.todo,
    required this.isShowDeleteButton,
    required this.onChanged,
  });

  final TodoViewState todo;
  final bool isShowDeleteButton;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {
            AppRouter.push(
              context,
              TodoDetailScreen.name,
              {
                'title': todo.title,
                'message': todo.message,
                'isDone': '${todo.done}',
              },
            );
          },
          child: ListTile(
            title: Text(todo.title),
            subtitle: Text(todo.message),
            trailing: todo.done ? const Icon(Icons.done) : null,
            leading: isShowDeleteButton
                ? Checkbox(
                    value: todo.isDeleted,
                    onChanged: (value) => onChanged(value ?? todo.isDeleted),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}

class _FloatingButton extends StatelessWidget {
  const _FloatingButton({
    required this.icon,
    required this.onTap,
  });

  final Widget icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onInverseSurface,
        shape: BoxShape.circle,
        boxShadow: const [
          BoxShadow(
            color: Color(0x40000000),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: onTap,
          child: icon,
        ),
      ),
    );
  }
}
