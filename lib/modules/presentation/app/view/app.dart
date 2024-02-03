import 'package:catbreeds/injection_container.dart';
import 'package:catbreeds/modules/data/models/breed_model.dart';
import 'package:catbreeds/modules/presentation/blocs/breed_cubit/breed_cubit.dart';
import 'package:flutter/material.dart';
import 'package:catbreeds/l10n/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => locator<BreedCubit>()),
      ],
      child: ScreenUtilInit(
        minTextAdapt: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: AppBarTheme(),
            useMaterial3: true,
            cardTheme: CardTheme(
              surfaceTintColor: Colors.white,
            ),
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: TestingCubit(),
        ),
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
    return Scaffold(
      backgroundColor: Color(CatBreedsColors.secondary),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text('Catbreeds',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(CatBreedsColors.primary))),
      ),
      floatingActionButton: IconButton(
          onPressed: () async {
            final breedCubit = context.read<BreedCubit>();
            await breedCubit.getBreeds();
            await breedCubit.getImagesByIds();
          },
          icon: Icon(Icons.abc)),
      body: BlocBuilder<BreedCubit, BreedState>(
        builder: (context, state) {
          return state.breeds.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, top: 10.0, right: 10.0),
                      child: SizedBox(
                        height: 50.h,
                        child: CustomSearchBar(
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
                            itemCount: state.breeds.length,
                            itemBuilder: (BuildContext, i) => GestureDetector(
                                  onTap: () {},
                                  child: BreedCard(
                                    breed: state.breeds[i],
                                  ),
                                )),
                      ),
                    ),
                  ],
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
        color: Colors.white,
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
                  borderRadius: BorderRadius.only(
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
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(CatBreedsColors.primary))),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(breed.description!,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
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
          color: Color(CatBreedsColors.primary).withOpacity(.1),
          overflow: TextOverflow.ellipsis,
        ),
        onChanged: onChanged,
        enabled: enabled,
        autofocus: autofocus ?? false,
        cursorColor: const Color(CatBreedsColors.primary),
        readOnly: readOnly,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(CatBreedsColors.primary).withOpacity(.2),
          isDense: true,
          // contentPadding: EdgeInsets.all(16.r),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 13.sp,
            color: Color(CatBreedsColors.primary),
            overflow: TextOverflow.ellipsis,
          ),
          prefixIcon: prefixIcon ??
              SizedBox(
                width: orientation == Orientation.portrait ? 32.w : 16.w,
                child: Icon(
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
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPersistentHeader(
            delegate: _PersistenHeader(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              _detailList(context),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> _detailList(BuildContext context) {
  ThemeData appTheme = Theme.of(context);
  return [
    InfoCard(
      description: Text(
        "Driver name",
        style: appTheme.textTheme.bodyLarge,
      ),
      data: Text(
        "No driver",
        style: appTheme.textTheme.labelLarge,
      ),
    ),
    InfoCard(
      description: Text(
        "Asset type",
        style: appTheme.textTheme.bodyLarge,
      ),
      data: Text(
        "",
        style: appTheme.textTheme.labelLarge,
      ),
    ),
    InfoCard(
      description: Text(
        "Asset group",
        style: appTheme.textTheme.bodyLarge,
      ),
      data: Text(
        "",
        style: appTheme.textTheme.labelLarge,
      ),
    ),
    InfoCard(
      description: Text(
        "Address",
        style: appTheme.textTheme.bodyLarge,
      ),
      data: Text(
        "controller.address",
        textAlign: TextAlign.right,
        maxLines: 4,
        style: appTheme.textTheme.labelLarge,
      ),
    ),
  ];
}

class _PersistenHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 16.h, 0, 16.h),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 4,
          ),
        ],
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Center(
          child: SizedBox(
            width: 1.sw / 2,
            child: AspectRatio(
              aspectRatio: 1,
              child: Hero(
                tag: "HeroID",
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: Image.memory(
                    Uri.parse("URL").data!.contentAsBytes(),
                  ).image,
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 1000;

  @override
  double get minExtent => 200;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
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
    return Material(
        child: Container(
      height: height,
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(CatBreedsColors.secondary).withOpacity(.4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          data ?? Container(),
          description,
        ],
      ),
    ));
  }
}
