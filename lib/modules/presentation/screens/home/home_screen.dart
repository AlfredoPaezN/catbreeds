import 'package:catbreeds/core/utils/colors.dart';
import 'package:catbreeds/core/utils/debouncer.dart';
import 'package:catbreeds/modules/data/models/breed_model.dart';
import 'package:catbreeds/modules/presentation/blocs/breed_cubit/breed_cubit.dart';
import 'package:catbreeds/modules/presentation/widgets/search_bar.dart';
import 'package:catbreeds/modules/presentation/widgets/staggered_dual.dart';
import 'package:catbreeds/routes/routes_constants.dart';
import 'package:circle_flags/circle_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(CatBreedsColors.backgroundColor),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: const Text(
          'Catbreeds',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(CatBreedsColors.primary),
          ),
        ),
      ),

      // body: BreedDetail(),
      body: BlocBuilder<BreedCubit, BreedState>(
        builder: (context, state) {
          return state.when<Widget>(
            initial: (breeds, selectedBreed, filteredBreeds) => const Text(''),
            loading: (breeds, selectedBreed, filteredBreeds) => Column(
              children: [
                const Search(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Skeletonizer(
                      child: StaggeredDualView(
                        spacing: 10,
                        aspectRatio: 0.7,
                        itemCount: 6,
                        itemBuilder: (context, i) => GestureDetector(
                          onTap: () {
                            context
                                .read<BreedCubit>()
                                .setSelectedBreed(filteredBreeds[i]);

                            context.push(Routes.detail);
                          },
                          child: const BreedCard(
                            breed: Breed(
                              id: 'id',
                              name: 'name',
                              origin: 'origin',
                              description: 'description',
                              temperament: 'temperament',
                              adaptability: 1,
                              hypoallergenic: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            success: (breeds, selectedBreed, filteredBreeds) {
              return Column(
                children: [
                  const Search(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: StaggeredDualView(
                        spacing: 10,
                        aspectRatio: 0.7,
                        itemCount: filteredBreeds.length,
                        itemBuilder: (context, i) => GestureDetector(
                          onTap: () {
                            context
                                .read<BreedCubit>()
                                .setSelectedBreed(filteredBreeds[i]);

                            context.push(Routes.detail);
                          },
                          child: BreedCard(
                            breed: filteredBreeds[i],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
            error: (breeds, selectedBreed, filteredBreeds, errorMessage) =>
                Text(errorMessage ?? ''),
          );
        },
      ),
    );
  }
}

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    final breedCubit = context.read<BreedCubit>();

    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        top: 10,
        right: 10,
      ),
      child: SizedBox(
        height: 50.h,
        child: BreedSearchBar(
          onChanged: (value) {
            debouncer.run(() {
              breedCubit.filterBreeds(value);
            });
          },
          hintText: 'Search by Breed',
          leftPadding: 10,
          topPadding: 10,
          rightPadding: 10,
          bottomPadding: 10,
        ),
      ),
    );
  }
}

class BreedCard extends StatelessWidget {
  const BreedCard({
    required this.breed,
    super.key,
  });
  final Breed breed;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(CatBreedsColors.secondary),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 8,
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Hero(
              tag: 'image-${breed.referenceImageId}',
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      child: Image.network(
                        'https://cdn2.thecatapi.com/images/${breed.referenceImageId}.jpg',
                        errorBuilder: (context, error, stackTrace) {
                          return Image.asset(
                            'assets/images/cat_placeholder.png',
                            fit: BoxFit.cover,
                            height: 300,
                            width: double.infinity,
                          );
                        },
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            breed.origin,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5.w),
                          if (breed.countryCode == null)
                            const SizedBox()
                          else
                            CircleFlag(
                              breed.countryCode!,
                              size: 15,
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: Column(
                children: [
                  Text(
                    breed.name,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(CatBreedsColors.primary),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      breed.description!,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
