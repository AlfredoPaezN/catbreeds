import 'package:catbreeds/injection_container.dart';
import 'package:catbreeds/modules/data/models/breed_model.dart';
import 'package:catbreeds/modules/presentation/blocs/breed_cubit/breed_cubit.dart';
import 'package:catbreeds/routes/routes.dart';
import 'package:catbreeds/routes/routes_constants.dart';
import 'package:flutter/material.dart';
import 'package:catbreeds/l10n/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
          routerConfig: AppRouter.returnRouter(),
          // localizationsDelegates: AppLocalizations.localizationsDelegates,
          // supportedLocales: AppLocalizations.supportedLocales,

          // routeInformationParser:
          //     AppRouter.returnRouter().routeInformationParser,
          // routerDelegate: AppRouter.returnRouter().routerDelegate,
          // home: BreedDetail(),
        ),
      ),
    );
  }
}

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
            initial: (breeds) => const Text('Hi'),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            success: (breeds) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 10.0, right: 10.0),
                    child: SizedBox(
                      height: 50.h,
                      child: const CustomSearchBar(
                        hintText: 'Search by Breed',
                        leftPadding: 10,
                        topPadding: 10,
                        rightPadding: 10,
                        bottomPadding: 10,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 0, right: 20.0),
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
            error: Text.new,
          );
        },
      ),
    );
  }
}

class BreedCard extends StatelessWidget {
  const BreedCard({super.key, required this.breed});
  final Breed breed;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: const Color(CatBreedsColors.secondary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 8,
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
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
            Expanded(
              flex: 3,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(breed.name,
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(CatBreedsColors.primary))),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(breed.description!,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class StaggeredDualView extends StatelessWidget {
  const StaggeredDualView({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    this.spacing = 0.0,
    this.aspectRatio = 0.5,
  });

  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;
  final double spacing;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: spacing,
            mainAxisSpacing: spacing,
            childAspectRatio: aspectRatio),
        itemBuilder: (context, index) {
          return Transform.translate(
              offset: Offset(0.0, index.isOdd ? 100 : 0.0),
              child: itemBuilder(context, index));
        });
  }
}

class CatBreedsColors {
  //prevents instantiation and extension
  CatBreedsColors._();

  static const int primary = 0xFF6068A6;
  static const int secondary = 0xFFF7EFFB;
  static const int backgroundColor = 0xFFD9D5EA;
}

class CustomSearchBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomSearchBar({
    Key? key,
    this.controller,
    this.onChanged,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.enabled,
    this.autofocus,
    this.readOnly = false,
    this.leftPadding,
    this.topPadding,
    this.rightPadding,
    this.bottomPadding,
  }) : super(key: key);

  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? enabled;
  final bool? autofocus;
  final bool readOnly;
  final double? leftPadding;
  final double? topPadding;
  final double? rightPadding;
  final double? bottomPadding;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Container(
      padding: EdgeInsets.fromLTRB(
        leftPadding ?? 0,
        topPadding ?? 0,
        rightPadding ?? 0,
        bottomPadding ?? 0,
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.text,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 14.sp,
          color: const Color(CatBreedsColors.primary).withOpacity(.1),
          overflow: TextOverflow.ellipsis,
        ),
        onChanged: onChanged,
        enabled: enabled,
        autofocus: autofocus ?? false,
        cursorColor: const Color(CatBreedsColors.primary),
        readOnly: readOnly,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(CatBreedsColors.primary).withOpacity(.2),
          isDense: true,
          // contentPadding: EdgeInsets.all(16.r),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 13.sp,
            color: const Color(CatBreedsColors.primary),
            overflow: TextOverflow.ellipsis,
          ),
          prefixIcon: prefixIcon ??
              SizedBox(
                width: orientation == Orientation.portrait ? 32.w : 16.w,
                child: const Icon(
                  Icons.search,
                  size: 18,
                  color: Color(CatBreedsColors.primary),
                ),
              ),
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.r),
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.0.h);
}

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
      body: Column(children: [
        const Expanded(
          flex: 3,
          child: _DetailHeader(),
        ),
        Expanded(
            flex: 4,
            child: ListView(
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
                        "Breed",
                        style: BoldTextStyle(),
                      ),
                    ),
                    InfoCard(
                      description: const Text(
                        "Country Code",
                      ),
                      data: Text(
                        "Country",
                        style: BoldTextStyle(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                InfoCard(
                  description: const Text(
                    "Asset type",
                  ),
                  data: Text(
                    "Description",
                    style: BoldTextStyle(),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoCard(
                      description: const Text(
                        "Asset type",
                      ),
                      data: Text(
                        "Life Span",
                        style: BoldTextStyle(),
                      ),
                    ),
                    InfoCard(
                      description: const Text(
                        "Asset type",
                      ),
                      data: Text(
                        "intelligence",
                        style: BoldTextStyle(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                InfoCard(
                  description: const Text(
                    "Asset type",
                  ),
                  data: Text(
                    "Temperament",
                    style: BoldTextStyle(),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoCard(
                      description: const Text(
                        "Asset type",
                      ),
                      data: Text(
                        "Weight",
                        style: BoldTextStyle(),
                      ),
                    ),
                    InfoCard(
                      description: const Text(
                        "Energy level",
                      ),
                      data: Text(
                        "Energy level",
                        style: BoldTextStyle(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            )),
      ]),
    );
  }

  TextStyle BoldTextStyle() {
    return TextStyle(
      color: const Color(CatBreedsColors.primary),
      fontWeight: FontWeight.bold,
      fontSize: 13.sp,
    );
  }
}

class _DetailHeader extends StatelessWidget {
  const _DetailHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.h),
      child: Center(
        child: AspectRatio(
          aspectRatio: 1,
          child: Hero(
            tag: "HeroID",
            child: CircleAvatar(
              radius: 100,
              backgroundImage: Image.network(
                "https://cdn2.thecatapi.com/images/dN6eoeLjY.jpg",
                fit: BoxFit.cover,
              ).image,
              // backgroundImage: Image.memory(
              //   Uri.parse("URL").data!.contentAsBytes(),
              // ).image,
              backgroundColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    this.trailing,
    this.data,
    this.onTap,
    this.color,
    this.height,
    required this.description,
  }) : super(key: key);

  final Widget? trailing;
  final Widget description;
  final Widget? data;
  final Color? color;
  final double? height;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      width: 130.w,
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(CatBreedsColors.secondary),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          data ?? Container(),
          description,
        ],
      ),
    );
  }
}
