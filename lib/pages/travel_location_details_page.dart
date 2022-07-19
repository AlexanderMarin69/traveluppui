import 'package:flutter/material.dart';

import '../components/details_page_image_header.dart';
import '../helpers/dimensions.dart';

class TravelLocationDetailsPage extends StatelessWidget {
  final String imageName;
  final String title;
  final String companyName;
  final String description;

  const TravelLocationDetailsPage({
    Key? key,
    required this.imageName,
    required this.title,
    required this.companyName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     showModalBottomSheet<void>(
      //       // context and builder are
      //       // required properties in this widget
      //       context: context,
      //       backgroundColor: Colors.white,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.vertical(
      //           top: Radius.circular(
      //               Dimensions.couponHeaderImageBorderRadiusValue),
      //         ),
      //       ),

      //       builder: (BuildContext context) {
      //         return SizedBox(
      //           height: Dimensions.screenHeight,
      //           child: Center(
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: <Widget>[
      //                 Center(
      //                   child: SizedBox(
      //                     height: Dimensions.screenHeight / 2.8,
      //                     width: Dimensions.screenHeight / 2.8,
      //                     child: ClipRRect(
      //                       borderRadius: BorderRadius.circular(
      //                           Dimensions.couponHeaderImageBorderRadiusValue),
      //                       child: Image.asset(
      //                         'lib/images/qr_code_fake.jpg',
      //                         fit: BoxFit.cover,
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding: EdgeInsets.only(
      //                     top: Dimensions.minimumTopMargin,
      //                     left: Dimensions.minimumSideMargin + 5,
      //                     right: Dimensions.minimumSideMargin + 5,
      //                   ),
      //                   child: Text(
      //                     'Show this coupon at checkout and let the merchant scan it to get your deal!',
      //                     style: TextStyle(
      //                       fontSize: 18,
      //                       color: Colors.grey.shade700,
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         );
      //       },
      //     );
      //   },
      //   label: const Padding(
      //     padding: EdgeInsets.all(6.0),
      //     child: Text('Scan Coupon'),
      //   ),
      //   icon: const Icon(Icons.airplane_ticket_rounded),
      //   backgroundColor: Colors.orange.shade300,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.all(
      //       Radius.circular(Dimensions.borderRadiusValue),
      //     ),
      //   ),
      // ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            width: 180,
            right: Dimensions.minimumSideMargin,
            bottom: Dimensions.minimumTopMargin,
            child: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet<void>(
                  // context and builder are
                  // required properties in this widget
                  context: context,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(
                          Dimensions.couponHeaderImageBorderRadiusValue),
                    ),
                  ),

                  builder: (BuildContext context) {
                    return SizedBox(
                      height: Dimensions.screenHeight,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: SizedBox(
                                height: Dimensions.screenHeight / 2.8,
                                width: Dimensions.screenHeight / 2.8,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(Dimensions
                                      .couponHeaderImageBorderRadiusValue),
                                  child: Image.asset(
                                    'lib/images/qr_code_fake.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: Dimensions.minimumTopMargin,
                                left: Dimensions.minimumSideMargin + 5,
                                right: Dimensions.minimumSideMargin + 5,
                              ),
                              child: Text(
                                'Show this coupon at checkout and let the merchant scan it to get your deal!',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              backgroundColor: Colors.orange.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(Dimensions.borderRadiusValue),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.airplane_ticket_rounded,
                      size: 40,
                    ),
                    Text('Scan Coupon'),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            width: 140,
            left: Dimensions.minimumSideMargin,
            bottom: Dimensions.minimumTopMargin,
            child: FloatingActionButton(
              onPressed: () {/* Do something */},
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(Dimensions.borderRadiusValue),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Visit Merchant',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          //  header image
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              height: Dimensions.screenHeight * 0.38,
              child: DetailsPageImageHeader(
                hideBackButton: false,
                imageName: imageName,
                borderRadiusValue:
                    Dimensions.couponHeaderImageBorderRadiusValue,
                height: Dimensions.screenHeight * 0.38,
                width: double.maxFinite,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          // company name and times used
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.minimumSideMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  companyName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                    fontSize: 20,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Colors.orange.shade300,
                      width: 1.5,
                    ),
                    // color: backgroundColor,
                  ),
                  child: Row(
                    children: [
                      Text(
                        '6 / 10 ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Colors.orange.shade300,
                        ),
                      ),
                      Icon(
                        color: Colors.orange.shade300,
                        Icons.loyalty,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          // title
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.minimumSideMargin,
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ),
          const SizedBox(height: 15),
          // actual description
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.minimumSideMargin,
            ),
            child: Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          const SizedBox(height: 15),
          // terms
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.minimumSideMargin,
            ),
            child: Row(
              children: [
                Text(
                  'Expires 31-09-2022 ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade500,
                  ),
                ),
                Icon(
                  Icons.lock_clock_outlined,
                  size: 20,
                  color: Colors.orange.shade300,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
