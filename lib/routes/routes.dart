import 'package:catbreeds/modules/presentation/screens/detail/detail_screen.dart';
import 'package:catbreeds/modules/presentation/screens/home/home_screen.dart';
import 'package:catbreeds/routes/routes_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        name: Routes.home,
        path: '/',
        pageBuilder: (context, state) {
          return MaterialPage(key: state.pageKey, child: const Home());
        },
      ),
      GoRoute(
        name: Routes.detail,
        path: '/detail',
        pageBuilder: (context, state) {
          return MaterialPage(key: state.pageKey, child: const BreedDetail());
        },
      ),
      // GoRoute(
      //   name: MyAppRouteConstants.contactUsRouteName,
      //   path: '/contact_us',
      //   pageBuilder: (context, state) {
      //     return MaterialPage(child: ContactUS());
      //   },
      // )
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(key: state.pageKey, child: const Home());
    },
  );
  GoRouter get router => _router;
}
