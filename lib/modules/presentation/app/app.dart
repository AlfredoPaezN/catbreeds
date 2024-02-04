import 'package:catbreeds/injection_container.dart';
import 'package:catbreeds/modules/presentation/blocs/breed_cubit/breed_cubit.dart';
import 'package:catbreeds/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => locator<BreedCubit>()..getBreeds()),
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
          routeInformationProvider: AppRouter().router.routeInformationProvider,
          routerDelegate: AppRouter().router.routerDelegate,
        ),
      ),
    );
  }
}
