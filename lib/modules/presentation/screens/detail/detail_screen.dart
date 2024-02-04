import 'package:catbreeds/core/utils/colors.dart';
import 'package:catbreeds/modules/data/models/breed_model.dart';
import 'package:catbreeds/modules/presentation/blocs/breed_cubit/breed_cubit.dart';
import 'package:catbreeds/modules/presentation/widgets/info_card.dart';
import 'package:circle_flags/circle_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BreedDetail extends StatefulWidget {
  const BreedDetail({super.key});

  @override
  State<BreedDetail> createState() => _BreedDetailState();
}

class _BreedDetailState extends State<BreedDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(CatBreedsColors.primary),
          ),
        ),
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: const Text(
          'BREED DETAIL',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(CatBreedsColors.primary),
          ),
        ),
      ),
      backgroundColor: const Color(CatBreedsColors.backgroundColor),
      body: BlocBuilder<BreedCubit, BreedState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                flex: 3,
                child: _DetailHeader(
                  breedReferenceId: state.selectedBreed?.referenceImageId ?? '',
                ),
              ),
              Expanded(
                flex: 4,
                child: DetailBody(breed: state.selectedBreed!),
              ),
            ],
          );
        },
      ),
    );
  }
}

TextStyle? boldTextStyle() {
  return TextStyle(
    color: const Color(CatBreedsColors.primary),
    fontWeight: FontWeight.bold,
    fontSize: 13.sp,
  );
}

Color evaluateCalificationColor(int calification) {
  switch (calification) {
    case < 3:
      return const Color(CatBreedsColors.red);
    case < 5:
      return const Color(CatBreedsColors.yellow);
    case 5:
      return const Color(CatBreedsColors.green);
    default:
      return const Color(CatBreedsColors.red);
  }
}

List<Icon> generateCalificationAction(int calification) {
  final iconsList = List<Icon>.generate(calification, (index) {
    return Icon(
      Icons.circle_rounded,
      size: 20,
      color: evaluateCalificationColor(calification),
    );
  });

  iconsList.addAll(
    List.generate(5 - calification, (index) {
      return Icon(
        Icons.circle_outlined,
        size: 20,
        color: evaluateCalificationColor(calification),
      );
    }),
  );

  return iconsList;
}

class DetailBody extends StatelessWidget {
  const DetailBody({required this.breed, super.key});

  final Breed breed;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      physics: const BouncingScrollPhysics(),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InfoCard(
              description: Text(
                breed.name,
              ),
              data: Text(
                'Breed',
                style: boldTextStyle(),
              ),
            ),
            InfoCard(
              description: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    breed.origin,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  if (breed.countryCode == null)
                    const SizedBox()
                  else
                    CircleFlag(
                      breed.countryCode!,
                      size: 15,
                    ),
                ],
              ),
              data: Text(
                'Country',
                style: boldTextStyle(),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        InfoCard(
          description: Text(
            breed.description!,
          ),
          data: Text(
            'Description',
            style: boldTextStyle(),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InfoCard(
              description: Text(
                '${breed.lifeSpan} years',
              ),
              data: Text(
                'Life Span',
                style: boldTextStyle(),
              ),
            ),
            InfoCard(
              description: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (breed.intelligence == null)
                    const Text('Unknown')
                  else
                    ...generateCalificationAction(breed.intelligence!),
                ],
              ),
              data: Text(
                'Intelligence',
                style: boldTextStyle(),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        InfoCard(
          description: Text(
            breed.temperament,
          ),
          data: Text(
            'Temperament',
            style: boldTextStyle(),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InfoCard(
              description: Text(
                '${breed.weight!.imperial} Kg',
              ),
              data: Text(
                'Weight',
                style: boldTextStyle(),
              ),
            ),
            InfoCard(
              description: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (breed.intelligence == null)
                    const Text('Unknown')
                  else
                    ...generateCalificationAction(breed.energyLevel!),
                ],
              ),
              data: Text(
                'Energy level',
                style: boldTextStyle(),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}

class _DetailHeader extends StatelessWidget {
  const _DetailHeader({
    required this.breedReferenceId,
  });
  final String breedReferenceId;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.h),
      child: Center(
        child: AspectRatio(
          aspectRatio: 1,
          child: Hero(
            tag: 'image-$breedReferenceId',
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Image.network(
                  'https://cdn2.thecatapi.com/images/$breedReferenceId.jpg',
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
          ),
        ),
      ),
    );
  }
}
