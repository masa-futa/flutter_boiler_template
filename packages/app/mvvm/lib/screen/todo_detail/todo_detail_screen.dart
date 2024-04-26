import 'package:flutter/material.dart';

class TodoDetailScreen extends StatelessWidget {
  const TodoDetailScreen({
    super.key,
    required this.title,
    required this.message,
    required this.isDone,
  });

  static String path = 'todo_detail';
  static String name = 'todo_detail';

  final String title;
  final String message;
  final bool isDone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _SectionWidget(text: 'タイトル'),
              const SizedBox(height: 8),
              _BodyWidget(text: title),
              const _Separator(),
              const SizedBox(height: 16),
              const _SectionWidget(text: 'メッセージ'),
              const SizedBox(height: 8),
              _BodyWidget(text: message),
              const _Separator(),
              const SizedBox(height: 16),
              const _SectionWidget(text: '完了有無'),
              const SizedBox(height: 8),
              _BodyWidget(text: isDone ? '完了' : '未完了'),
            ],
          ),
        ));
  }
}

class _SectionWidget extends StatelessWidget {
  const _SectionWidget({
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 24,
            color: Colors.orange,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class _Separator extends StatelessWidget {
  const _Separator();

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey.withOpacity(0.4),
      indent: 12,
    );
  }
}
