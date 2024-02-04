import 'dart:convert';
import 'dart:io';

import 'package:catbreeds/core/usecase/usecase.dart';
import 'package:catbreeds/injection_container.dart';
import 'package:catbreeds/modules/data/models/breed_model.dart';

import 'package:catbreeds/modules/domain/usecases/breed_usecases/get_breeds_usecase.dart';
import 'package:catbreeds/modules/presentation/blocs/breed_cubit/breed_cubit.dart';
import 'package:catbreeds/modules/presentation/screens/home/home_screen.dart';
import 'package:catbreeds/modules/presentation/widgets/info_card.dart';
import 'package:catbreeds/routes/routes_constants.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fixtures/fixture_reader.dart';
import '../../../helpers/helpers.dart';
import '../../../mocks/breed_mocks.dart';

void main() {
  late MockBreedCubit breedCubit;
  late MockGetBreedsUseCase getBreedsUseCase;

  final breedJson = fixtureReader('breed.json');
  final breed = Breed.fromJson(json.decode(breedJson) as Map<String, dynamic>);

  setUpAll(() async {
    await initLocator();
    getBreedsUseCase = MockGetBreedsUseCase();
    breedCubit = MockBreedCubit();

    await locator.unregister<GetBreedsUseCase>();
    await locator.unregister<BreedCubit>();
    locator
      ..registerFactory<GetBreedsUseCase>(() => getBreedsUseCase)
      ..registerFactory<BreedCubit>(() => breedCubit);

    registerFallbackValue(MockBreedState());

    when(() => getBreedsUseCase.call(NoParams()))
        .thenAnswer((_) async => Right([breed]));
    when(() => breedCubit.getBreeds()).thenAnswer(
      (_) async => when(() => breedCubit.state).thenReturn(
        BreedState.success(breeds: [breed], filteredBreeds: [breed]),
      ),
    );

    HttpOverrides.global = null;
  });

  group('Breed testing', () {
    testWidgets('Renders at least a breed and search breed widget',
        (tester) async {
      await tester.pumpRealRouterApp(
        Routes.home,
        (child) => child,
        isConnected: false,
      );

      await tester.pumpAndSettle();

      expect(find.byType(BreedCard), findsOneWidget);
      expect(find.byType(Search), findsOneWidget);
    });

    testWidgets('Renders selected bread in detail view', (tester) async {
      when(() => breedCubit.setSelectedBreed(breed)).thenAnswer(
        (_) async => when(() => breedCubit.state).thenReturn(
          BreedState.success(
            selectedBreed: breed,
            breeds: [breed],
            filteredBreeds: [breed],
          ),
        ),
      );

      await tester.pumpRealRouterApp(
        Routes.home,
        (child) => child,
        isConnected: false,
      );

      await tester.pumpAndSettle();

      await tester.tap(find.byType(BreedCard));

      await tester.pumpAndSettle();

      expect(find.byType(Image), findsAtLeast(1));
      expect(find.byType(InfoCard), findsAtLeast(5));
    });
  });
}
