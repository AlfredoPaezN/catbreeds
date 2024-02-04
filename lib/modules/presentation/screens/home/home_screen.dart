import 'package:catbreeds/core/utils/colors.dart';
import 'package:catbreeds/modules/data/models/breed_model.dart';
import 'package:catbreeds/modules/presentation/blocs/breed_cubit/breed_cubit.dart';
import 'package:catbreeds/modules/presentation/widgets/search_bar.dart';
import 'package:catbreeds/modules/presentation/widgets/staggered_dual.dart';
import 'package:catbreeds/routes/routes_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final breedCubit = context.read<BreedCubit>();
    return Scaffold(
      backgroundColor: const Color(CatBreedsColors.backgroundColor),
      appBar: AppBar(
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
      body: BlocBuilder<BreedCubit, BreedState>(builder: (context, state) {
        return state.when<Widget>(
          initial: (breeds, e, w) => const Text(''),
          loading: (breeds, e, w) => const Center(
            child: CircularProgressIndicator(),
          ),
          success: (breeds, e, w) {
            return Column(
              children: [
                Search(state: state),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, top: 0, right: 20.0),
                    child: StaggeredDualView(
                        spacing: 10,
                        aspectRatio: 0.7,
                        itemCount: breeds.length,
                        itemBuilder: (BuildContext, i) => GestureDetector(
                              onTap: () {
                                context.go(Routes.detail);
                              },
                              child: BreedCard(
                                breed: breeds[i],
                              ),
                            )),
                  ),
                ),
              ],
            );
          },
          error: (breeds, selectedBreed, searchText, errorMessage) =>
              Text(errorMessage ?? ''),
        );
      }),
    );
  }
}

class Search extends StatelessWidget {
  const Search({super.key, required this.state});

  final BreedState state;

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
          onChanged: breedCubit.filterBreeds,
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
              tag: breed.id,
              child: AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: breed.image?.url != null
                      ? Image.network(
                          breed.image!.url!,
                          fit: BoxFit.cover,
                        )
                      : Container(),
                ),
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
