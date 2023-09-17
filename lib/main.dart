import 'package:cloud_store_app/app_styles.dart';
import 'package:cloud_store_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
        floatingActionButton: SizedBox(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: kPurpleColor,
            child: Icon(Icons.add),
          ),
          width: 60,
          height: 60,
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Color> folderColors = [
    kLightBlueColor,
    kLightYellowColor,
    kLightRedColor,
    kLightGreenColor,
    kLightBlueColor,
    kLightYellowColor,
    kLightRedColor,
    kLightGreenColor,
  ];

  List<Color> textColors = [
    kBlueColor,
    kYellowColor,
    kRedColor,
    kGreenColor,
    kBlueColor,
    kYellowColor,
    kRedColor,
    kGreenColor,
  ];

  List<String> folderIconColors = [
    'folder_icon_blue.svg',
    'folder_icon_yellow.svg',
    'folder_icon_red.svg',
    'folder_icon_green.svg',
    'folder_icon_blue.svg',
    'folder_icon_yellow.svg',
    'folder_icon_red.svg',
    'folder_icon_green.svg',
  ];

  List<String> moreIconColors = [
    'more_vertical_icon_blue.svg',
    'more_vertical_icon_yellow.svg',
    'more_vertical_icon_red.svg',
    'more_vertical_icon_green.svg',
    'more_vertical_icon_blue.svg',
    'more_vertical_icon_yellow.svg',
    'more_vertical_icon_red.svg',
    'more_vertical_icon_green.svg',
  ];

  List<String> folderNames = [
    'Mobile apps',
    'SVG icons',
    'prototypes',
    'Avatars',
    'Mobile apps',
    'SVG icons',
    'prototypes',
    'Avatars',
  ];

  List<String> folderDates = [
    'December 20.2020',
    'December 14.2020',
    'December 20.2020',
    'December 14.2020',
    'December 20.2020',
    'December 14.2020',
    'December 20.2020',
    'December 14.2020',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Your drobbbox",
                  style: kQuestrialSemibold.copyWith(
                      color: kBlackColor,
                      fontSize: SizeConfig.blockSizeHorizontal! * 6),
                ),
                SvgPicture.asset('assets/menu_icon.svg'),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 4,
            ),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  borderSide: BorderSide(
                    width: 1,
                    color: kGreyColor,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  borderSide: BorderSide(
                    width: 1,
                    color: kGreyColor,
                  ),
                ),
                prefixIcon: Container(
                  width: 24,
                  height: 24,
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'assets/search_icon.svg',
                  ),
                ),
                hintText: "search folder",
                hintStyle: kQuestrialMedium.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  color: kDarkGreyColor,
                ),
              ),
              style: kQuestrialMedium.copyWith(
                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                color: kDarkGreyColor,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Recent",
                      style: kQuestrialSemibold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                        color: kLightBlackColor,
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal! * 2,
                    ),
                    SvgPicture.asset('assets/arrow_down_icon.svg'),
                  ],
                ),
                SvgPicture.asset('assets/sort_icon.svg'),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 3,
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: SizeConfig.blockSizeHorizontal! * 2,
                  mainAxisSpacing: SizeConfig.blockSizeHorizontal! * 2,
                  mainAxisExtent: 107),
              itemCount: folderColors.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 0.5 * kPaddingHorizontal,
                  ),
                  decoration: BoxDecoration(
                    color: folderColors[index],
                    borderRadius: BorderRadius.circular(kBorderRadius),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/${folderIconColors[index]}',
                          ),
                          SvgPicture.asset('assets/${moreIconColors[index]}'),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 0.4,
                      ),
                      Text(
                        folderNames[index],
                        style: kQuestrialSemibold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: textColors[index]),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 0.4,
                      ),
                      Text(
                        folderDates[index],
                        style: kQuestrialRegular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                            color: textColors[index]),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
