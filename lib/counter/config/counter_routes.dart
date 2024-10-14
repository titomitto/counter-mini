import 'package:counter_mini/counter/ui/ui.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_routes.g.dart';

@riverpod
List<GoRoute> counterRoutes(CounterRoutesRef ref) => [
      GoRoute(
        path: CounterScreen.routePath,
        builder: (context, state) => const CounterScreen(),
      ),
    ];
