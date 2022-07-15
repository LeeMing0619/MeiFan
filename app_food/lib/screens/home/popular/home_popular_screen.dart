import 'package:app_food/main.dart';
import 'package:app_food/screens/home/popular/category_list_view.dart';
import 'package:app_food/screens/home/popular/models/category.dart';
import 'package:badges/badges.dart';
import 'package:app_food/screens/home/popular/popular_course_list_view.dart';
import 'package:app_food/screens/home/popular/popular_detail_screen.dart';
import 'package:flutter/material.dart';
import 'design_course_app_theme.dart';

class PopularHomeScreen extends StatefulWidget {
  @override
  _PopularHomeScreenState createState() => _PopularHomeScreenState();
}

class _PopularHomeScreenState extends State<PopularHomeScreen> {
  CategoryType categoryType = CategoryType.menu_1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: DesignCourseAppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            getAppBarUI(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: <Widget>[
                      // getSearchBarUI(),
                      getCategoryUI(),
                      Flexible(
                        child: getPopularCourseUI(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getCategoryUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
          child: Text(
            '菜单目录',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              letterSpacing: 0.27,
              color: DesignCourseAppTheme.darkerText,
            ),
          ),
        ),
        // const SizedBox(
        //   height: 16,
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 16, right: 16),
        //   child: Row(
        //     children: <Widget>[
        //       getButtonUI(
        //           CategoryType.menu_1, categoryType == CategoryType.menu_1),
        //       const SizedBox(
        //         width: 16,
        //       ),
        //       getButtonUI(
        //           CategoryType.menu_2, categoryType == CategoryType.menu_2),
        //       const SizedBox(
        //         width: 16,
        //       ),
        //       getButtonUI(
        //           CategoryType.menu_3, categoryType == CategoryType.menu_3),
        //     ],
        //   ),
        // ),
        // const SizedBox(
        //   height: 16,
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 16, right: 16),
        //   child: Row(
        //     children: <Widget>[
        //       getButtonUI(
        //           CategoryType.menu_4, categoryType == CategoryType.menu_4),
        //       const SizedBox(
        //         width: 16,
        //       ),
        //       getButtonUI(
        //           CategoryType.menu_5, categoryType == CategoryType.menu_5),
        //       const SizedBox(
        //         width: 16,
        //       ),
        //       getButtonUI(
        //           CategoryType.menu_6, categoryType == CategoryType.menu_6),
        //     ],
        //   ),
        // ),
        // const SizedBox(
        //   height: 16,
        // ),
        CategoryListView(
          callBack: () {
            moveTo();
          },
        ),
      ],
    );
  }

  Widget getPopularCourseUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '热门饮食',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              letterSpacing: 0.27,
              color: DesignCourseAppTheme.darkerText,
            ),
          ),
          Expanded(
            child: PopularCourseListView(
              callBack: () {
                moveTo();
              },
            ),
          )
        ],
      ),
    );
  }

  void moveTo() {
    Navigator.push<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => PopularDetailScreen(),
      ),
    );
  }

  Widget getButtonUI(CategoryType categoryTypeData, bool isSelected) {
    String txt = '';
    if (CategoryType.menu_1 == categoryTypeData) {
      txt = '烤牛肉';
    } else if (CategoryType.menu_2 == categoryTypeData) {
      txt = '主食';
    } else if (CategoryType.menu_3 == categoryTypeData) {
      txt = '酒';
    } else if (CategoryType.menu_4 == categoryTypeData) {
      txt = '酒';
    } else if (CategoryType.menu_5 == categoryTypeData) {
      txt = '酒';
    } else if (CategoryType.menu_6 == categoryTypeData) {
      txt = '...';
    }

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: isSelected
                ? DesignCourseAppTheme.nearlyBlue
                : DesignCourseAppTheme.nearlyWhite,
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            border: Border.all(color: DesignCourseAppTheme.nearlyBlue)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.white24,
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            onTap: () {
              setState(() {
                categoryType = categoryTypeData;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12, bottom: 12, left: 18, right: 18),
              child: Center(
                child: Text(
                  txt,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    letterSpacing: 0.27,
                    color: isSelected
                        ? DesignCourseAppTheme.nearlyWhite
                        : DesignCourseAppTheme.nearlyBlue,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getSearchBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: 64,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: HexColor('#F8FAFB'),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(13.0),
                    bottomLeft: Radius.circular(13.0),
                    topLeft: Radius.circular(13.0),
                    topRight: Radius.circular(13.0),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: TextFormField(
                          style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: DesignCourseAppTheme.nearlyBlue,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: '请输入美食名。。。',
                            border: InputBorder.none,
                            helperStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: HexColor('#B9BABC'),
                            ),
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0.2,
                              color: HexColor('#B9BABC'),
                            ),
                          ),
                          onEditingComplete: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.search, color: HexColor('#B9BABC')),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          )
        ],
      ),
    );
  }

  Widget getAppBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 38, bottom: 13),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  foregroundColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  radius: 40.0,
                  child: ClipOval(
                    child: Image.asset('assets/images/userImage.png'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Design Course',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    letterSpacing: 0.27,
                    color: DesignCourseAppTheme.darkerText,
                  ),
                ),
              ],
            ),
          ),
          Badge(
            position: BadgePosition.topEnd(top: -15, end: -25),
            elevation: 0,
            shape: BadgeShape.circle,
            badgeColor: DesignCourseAppTheme.nearlyWhite,
            borderSide: BorderSide(color: DesignCourseAppTheme.nearlyBlue),
            badgeContent: Text(
              '12',
              style: TextStyle(color: DesignCourseAppTheme.nearlyBlue),
            ),
            animationType: BadgeAnimationType.fade,
            child: Container(
              width: 40,
              height: 40,
              child: Image.asset('assets/images/cart.png'),
            ),
          ),
        ],
      ),
    );
  }
}

enum CategoryType {
  menu_1,
  menu_2,
  menu_3,
  menu_4,
  menu_5,
  menu_6,
}
