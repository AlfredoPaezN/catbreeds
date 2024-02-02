import 'package:catbreeds/injection_container.dart';
import 'package:catbreeds/modules/presentation/blocs/breed_cubit/breed_cubit.dart';
import 'package:flutter/material.dart';
import 'package:catbreeds/l10n/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => locator<BreedCubit>()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          useMaterial3: true,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: TestingCubit(),
      ),
    );
  }
}

class TestingCubit extends StatefulWidget {
  const TestingCubit({super.key});

  @override
  State<TestingCubit> createState() => _TestingCubitState();
}

class _TestingCubitState extends State<TestingCubit> {
  @override
  Widget build(BuildContext context) {
    // final breedCubit = context.watch<BreedCubit>();

    return Scaffold(
      backgroundColor: Colors.indigo,
      floatingActionButton: IconButton(
          onPressed: () async {
            final breedCubit = context.read<BreedCubit>();
            await breedCubit.getBreeds();
          },
          icon: Icon(Icons.abc)),
      body: BlocBuilder<BreedCubit, BreedState>(
        builder: (context, state) {
          return ListView.builder(
              itemCount: state.breeds.length,
              itemBuilder: (BuildContext, i) => ListTile(
                    title: Text(state.breeds[i].name),
                  ));
        },
      ),
    );
  }
}
