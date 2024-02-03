import 'package:catbreeds/modules/presentation/app/view/app.dart';
import 'package:catbreeds/routes/routes_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static GoRouter returnRouter() {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: Routes.home,
          path: '/',
          pageBuilder: (context, state) {
            return MaterialPage(key: state.pageKey, child: Home());
          },
        ),
        GoRoute(
          name: Routes.detail,
          path: '/detail',
          pageBuilder: (context, state) {
            return MaterialPage(key: state.pageKey, child: BreedDetail());
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
        return MaterialPage(key: state.pageKey, child: Home());
      },
    );
    return router;
  }
}
