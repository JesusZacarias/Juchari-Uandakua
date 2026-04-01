import 'package:go_router/go_router.dart';
import 'package:juchari_uandakua/features/home/presentation/screens/home_screen.dart';

final appRouters = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
