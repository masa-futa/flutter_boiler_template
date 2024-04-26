import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm/screen/add_todo/add_todo_screen.dart';
import 'package:mvvm/screen/home/home_screen.dart';
import 'package:mvvm/screen/todo_detail/todo_detail_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) => _router;

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: HomeScreen.path,
      name: HomeScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: AddTodoScreen.path,
          name: AddTodoScreen.name,
          builder: (BuildContext context, GoRouterState state) {
            return const AddTodoScreen();
          },
        ),
        GoRoute(
          path: TodoDetailScreen.path,
          name: TodoDetailScreen.name,
          builder: (BuildContext context, GoRouterState state) {
            final title = state.uri.queryParameters['title']! as String? ?? '';
            final message =
                state.uri.queryParameters['message']! as String? ?? '';
            final isDone =
                state.uri.queryParameters['isDone']! as String? ?? 'false';
            return TodoDetailScreen(
              title: title,
              message: message,
              isDone: isDone == 'true',
            );
          },
        ),
      ],
    ),
  ],
);

class AppRouter {
  static Future<void> push(
    BuildContext context,
    String name, [
    Map<String, dynamic>? queryParameters,
  ]) async {
    await context.pushNamed(name, queryParameters: queryParameters ?? {});
  }
}
