import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:traveluppui/helpers/dimensions.dart';

import 'package:traveluppui/pages/travel_location_details_page.dart';
import '../components/categories_card.dart';
import '../components/travel_location_card.dart';
import '../helpers/app_icon.dart';
import '../helpers/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // HomePage({Key? key}) : super(key: key);

  int _index = 0;

  final List travelLocations = [
    [
      'starbucks_1',
      '10% off Ice Lattes',
      'This week we have 10% off Ice Lattes!',
      'Starbucks',
    ],
    [
      'hm_1',
      'Customer Club',
      'Scan at checkout to get points and redeem them later for discounts or offers!',
      'H&M',
    ],
    [
      'five_guys_1',
      '2 Meals for 1',
      'This weekend get the special offer for you and your friend! 2 meals for 1 for any burger meal.',
      'Five Guys',
    ],
    [
      'barber_1',
      '10th cut for free',
      'Use the stampcard and scan for every cut you get. The 10th cut is on the house.',
      'Ciro Capelli',
    ],
    [
      'food_1',
      'Drinks included',
      'Use the coupon to get free drinks this month!',
      'Hard Rock Cafee',
    ],
    [
      'starbucks_2',
      '5% off black coffee',
      'Use the coupon to get 5% discount on black coffee!',
      'Starbucks',
    ],
  ];

  final List travelLocations2 = [
    [
      'food_1',
      'Drinks included',
      'Use the coupon to get free drinks this month!',
      'Hard Rock Cafee',
    ],
    [
      'barber_1',
      '10th cut for free',
      'Use the stampcard and scan for every cut you get. The 10th cut is on the house.',
      'Ciro Capelli',
    ],
    [
      'five_guys_1',
      '2 Meals for 1',
      'This weekend get the special offer for you and your friend! 2 meals for 1 for any burger meal.',
      'Five Guys',
    ],
    [
      'starbucks_1',
      '10% off Ice Lattes',
      'This week we have 10% off Ice Lattes!',
      'Starbucks',
    ],
    [
      'hm_1',
      'Customer Club',
      'Scan at checkout to get points and redeem them later for discounts or offers!',
      'H&M',
    ],
    [
      'starbucks_2',
      '5% off black coffee',
      'Use the coupon to get 5% discount on black coffee!',
      'Starbucks',
    ],
  ];

  // [imageName, Text]
  final List couponCategories = [
    [
      'Food',
    ],
    [
      'Drinks',
    ],
    [
      'Clothes',
    ],
    [
      'Barbers',
    ],
  ];

  // [imageName, companyName]
  final List companiesList = [
    [
      'Hard Rock Cafee',
    ],
    [
      'H&M',
    ],
    [
      'Five Guys',
    ],
    [
      'Starbucks',
    ],
  ];

  void navigateToTravelDetailPage(
    BuildContext context,
    String imageName,
    String title,
    String description,
    String companyName,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TravelLocationDetailsPage(
          imageName: imageName,
          title: title,
          description: description,
          companyName: companyName,
        ),
      ),
    );
  }

  bool isFilteringCoupons = false;

  @override
  Widget build(BuildContext context) {
    void showFilters() {
      setState(() {
        isFilteringCoupons = !isFilteringCoupons;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: EdgeInsets.only(left: Dimensions.minimumSideMargin) * 1.5,
          height: 90,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
              ),
            ],
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('lib/images/profile_picture.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: Dimensions.minimumSideMargin) * 1.5,
            child: const Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Colors.white,
        borderRadius: Dimensions.borderRadiusValue,
        elevation: 50,
        itemBorderRadius: Dimensions.borderRadiusValue,
        selectedBackgroundColor: Colors.orange.shade300,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: (int val) => (() => _index = val),
        currentIndex: _index,
        items: [
          FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
          FloatingNavbarItem(icon: Icons.favorite_outline, title: 'My Coupons'),
          FloatingNavbarItem(icon: Icons.person_outline, title: 'Account'),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),

          // Big Text Up Top
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Welcome Back Felicia Grönberg <3',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 25),

          // Search Bar
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.minimumSideMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(Dimensions.borderRadiusValue),
                        borderSide: BorderSide(
                          color: Colors.orange.shade300,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(Dimensions.borderRadiusValue),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      hintText: 'Search for deals!',
                      hintStyle: const TextStyle(
                        fontSize: 16,
                      ),
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                ),
                GestureDetector(
                  onTap: showFilters,
                  child: Container(
                    // shadow for the filter button
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: isFilteringCoupons ? 16 : 0,
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: AppIcon(
                      icon: Icons.tune_rounded,
                      backgroundColor: Colors.orange.shade300,
                      iconColor: Colors.white,
                      size: 60,
                      iconSize: 26,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // filters
          AnimatedOpacity(
            opacity: isFilteringCoupons ? 1.0 : 0.0,
            duration: Duration(milliseconds: Constants.animationDuration),
            child: Visibility(
              visible: isFilteringCoupons,
              child: Container(
                margin: EdgeInsets.only(
                  left: Dimensions.minimumSideMargin,
                  right: Dimensions.minimumSideMargin,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Clear filters',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Categories
          AnimatedOpacity(
            opacity: isFilteringCoupons ? 1.0 : 0.0,
            duration: Duration(milliseconds: Constants.animationDuration),
            child: SizedBox(
              height: isFilteringCoupons ? 70 : 0.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: couponCategories.length,
                itemBuilder: (ctx, index) {
                  return CategoriesCard(
                    text: couponCategories[index][0],
                    // onTap: () {
                    //   navigateToTravelDetailPage(
                    //     ctx,
                    //     travelLocations[index][0],
                    //     travelLocations[index][1],
                    //     travelLocations[index][2],
                    //     travelLocations[index][3],
                    //   );
                    // },
                  );
                },
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: isFilteringCoupons ? 1.0 : 0.0,
            duration: Duration(milliseconds: Constants.animationDuration),
            child: SizedBox(
              height: isFilteringCoupons ? 20 : 0.0,
            ),
          ),
          // filters
          AnimatedOpacity(
            opacity: isFilteringCoupons ? 1.0 : 0.0,
            duration: Duration(milliseconds: Constants.animationDuration),
            child: Container(
              height: isFilteringCoupons ? 20 : 0.0,
              margin: EdgeInsets.only(
                left: Dimensions.minimumSideMargin,
                right: Dimensions.minimumSideMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Businesses',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Clear filters',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Compnies list
          AnimatedOpacity(
            opacity: isFilteringCoupons ? 1.0 : 0.0,
            duration: Duration(milliseconds: Constants.animationDuration),
            child: SizedBox(
              height: isFilteringCoupons ? 70 : 0.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: companiesList.length,
                itemBuilder: (ctx, index) {
                  return CategoriesCard(
                    text: companiesList[index][0],
                    // onTap: () {
                    //   navigateToTravelDetailPage(
                    //     ctx,
                    //     travelLocations[index][0],
                    //     travelLocations[index][1],
                    //     travelLocations[index][2],
                    //     travelLocations[index][3],
                    //   );
                    // },
                  );
                },
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: isFilteringCoupons ? 1.0 : 0.0,
            duration: Duration(milliseconds: Constants.animationDuration),
            child: SizedBox(
              height: isFilteringCoupons ? 20 : 0.0,
            ),
          ),
          // filters
          Container(
            margin: const EdgeInsets.only(left: 25.0, bottom: 10),
            child: const Text(
              'Recently used',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Cards horizontal scroll
          SizedBox(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: travelLocations.length,
              itemBuilder: (ctx, index) {
                return TravelLocationCard(
                  imagePath: travelLocations[index][0],
                  title: travelLocations[index][1],
                  description: travelLocations[index][2],
                  companyName: travelLocations[index][3],
                  onTap: () {
                    navigateToTravelDetailPage(
                      ctx,
                      travelLocations[index][0],
                      travelLocations[index][1],
                      travelLocations[index][2],
                      travelLocations[index][3],
                    );
                  },
                );
              },
            ),
          ),

          // NEW
          Container(
            margin: const EdgeInsets.only(left: 25.0, bottom: 10),
            child: const Text(
              'Popular',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Cards horizontal scroll
          SizedBox(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: travelLocations2.length,
              itemBuilder: (ctx, index) {
                return TravelLocationCard(
                  imagePath: travelLocations2[index][0],
                  title: travelLocations2[index][1],
                  description: travelLocations2[index][2],
                  companyName: travelLocations2[index][3],
                  onTap: () {
                    navigateToTravelDetailPage(
                      ctx,
                      travelLocations2[index][0],
                      travelLocations2[index][1],
                      travelLocations2[index][2],
                      travelLocations2[index][3],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
