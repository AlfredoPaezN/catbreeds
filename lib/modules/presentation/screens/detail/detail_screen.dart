import 'package:catbreeds/core/utils/colors.dart';
import 'package:catbreeds/modules/presentation/blocs/breed_cubit/breed_cubit.dart';
import 'package:catbreeds/modules/presentation/widgets/info_card.dart';
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
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(CatBreedsColors.primary),
            )),
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: const Text('BREED DETAIL',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(CatBreedsColors.primary))),
      ),
      backgroundColor: const Color(CatBreedsColors.backgroundColor),
      body: BlocBuilder<BreedCubit, BreedState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                flex: 3,
                child: _DetailHeader(
                  breedId: state.selectedBreed!.id,
                  imageUrl: state.selectedBreed?.image?.url,
                ),
              ),
              const Expanded(
                flex: 4,
                child: Body(),
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

class Body extends StatelessWidget {
  const Body({super.key});

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
              description: const Text(
                "Asset type",
              ),
              data: Text(
                'Breed',
                style: boldTextStyle(),
              ),
            ),
            InfoCard(
              description: Text(
                "Country Code",
              ),
              data: Text(
                "Country",
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
            "Asset type",
          ),
          data: Text(
            "Description",
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
                "Asset type",
              ),
              data: Text(
                "Life Span",
                style: boldTextStyle(),
              ),
            ),
            InfoCard(
              description: Text(
                "Asset type",
              ),
              data: Text(
                "intelligence",
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
            "Asset type",
          ),
          data: Text(
            "Temperament",
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
                "Asset type",
              ),
              data: Text(
                "Weight",
                style: boldTextStyle(),
              ),
            ),
            InfoCard(
              description: Text(
                "Energy level",
              ),
              data: Text(
                "Energy level",
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
    required this.breedId,
    this.imageUrl,
  });
  final String breedId;
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.h),
      child: Center(
        child: AspectRatio(
          aspectRatio: 1,
          child: Hero(
            tag: breedId,
            child: CircleAvatar(
              radius: 100,
              backgroundImage: imageUrl != null
                  ? Image.network(
                      imageUrl!,
                      fit: BoxFit.cover,
                    ).image
                  : const AssetImage('assets/icon/iconcatbgw.png'),
              backgroundColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
