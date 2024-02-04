import 'package:catbreeds/injection_container.dart';
import 'package:catbreeds/modules/presentation/blocs/breed_cubit/breed_cubit.dart';
import 'package:catbreeds/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpRealRouterApp(
    String location,
    Widget Function(Widget child) builder, {
    bool isConnected = true,
  }) {
    return pumpWidget(
      builder(
        MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => locator<BreedCubit>()..getBreeds(),
            ),
          ],
          child: ScreenUtilInit(
            minTextAdapt: true,
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                appBarTheme: const AppBarTheme(),
                useMaterial3: true,
                cardTheme: const CardTheme(
                  surfaceTintColor: Colors.white,
                ),
              ),
              // routerConfig: AppRouter.returnRouter(),
              routeInformationParser: AppRouter().router.routeInformationParser,
              routeInformationProvider:
                  AppRouter().router.routeInformationProvider,
              routerDelegate: AppRouter().router.routerDelegate,
            ),
          ),
        ),
      ),
    );
  }
}
