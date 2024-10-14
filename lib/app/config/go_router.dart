import 'package:counter_mini/counter/config/counter_routes.dart';
import 'package:counter_mini/counter/counter.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router.g.dart';

@riverpod
Raw<GoRouter> goRouter(GoRouterRef ref) {
  final router = GoRouter(
    initialLocation: CounterScreen.routePath,
    routes: [
      ...ref.watch(counterRoutesProvider),
    ],
    debugLogDiagnostics: true,
  );
  ref.onDispose(router.dispose);
  return router;
}
