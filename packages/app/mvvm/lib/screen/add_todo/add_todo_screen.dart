import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm/view_model/add_todo/add_todo_view_model.dart';

class AddTodoScreen extends HookConsumerWidget {
  const AddTodoScreen({super.key});

  static String path = 'add_todo';
  static String name = 'add_todo';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleText = useState('');
    final messageText = useState('');
    final addTodoState = ref.watch(
      addTodoViewModelProvider(
          title: titleText.value, message: messageText.value),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('追加'),
      ),
      body: Column(
        children: <Widget>[
          _CommonTextField(
            hintText: 'タイトルを記載',
            onChanged: (value) {
              titleText.value = value;
            },
          ),
          const SizedBox(height: 16),
          _CommonTextField(
            hintText: 'メッセージを記載',
            onChanged: (value) {
              messageText.value = value;
            },
          ),
          if (addTodoState.hasError) ...{
            const SizedBox(height: 12),
            const Text('エラーが発生しました。'),
          },
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () async {
              ref.invalidate(
                addTodoViewModelProvider(
                    title: titleText.value, message: messageText.value),
              );
            },
            style: ElevatedButton.styleFrom(minimumSize: const Size(80, 40)),
            child: const Text('追加'),
          ),
        ],
      ),
    );
  }
}

class _CommonTextField extends HookWidget {
  const _CommonTextField({
    required this.hintText,
    required this.onChanged,
  });

  final String hintText;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
