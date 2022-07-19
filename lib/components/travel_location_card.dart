import 'package:flutter/material.dart';

import '../helpers/dimensions.dart';
import '../components/details_page_image_header.dart';

class TravelLocationCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback onTap;
  final String companyName;

  const TravelLocationCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.onTap,
    required this.companyName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
          left: 8.0,
          right: 8.0,
          bottom: 30,
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: 230,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(Dimensions.borderRadiusValue),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // image
              // Padding(
              //   padding: const EdgeInsets.only(left: 6, right: 6, top: 6),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       borderRadius:
              //           BorderRadius.circular(Dimensions.borderRadiusValue),
              //       boxShadow: const [
              //         BoxShadow(
              //           color: Colors.black12,
              //           blurRadius: 10,
              //         ),
              //       ],
              //     ),
              //     child: ClipRRect(
              //       borderRadius:
              //           BorderRadius.circular(Dimensions.borderRadiusValue),
              //       child: Image.asset(
              //         'lib/images/$imagePath.jpg',
              //         width: double.infinity,
              //         height: 200,
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SizedBox(
                  height: 140,
                  child: DetailsPageImageHeader(
                    borderRadiusValue: Dimensions.borderRadiusValue,
                    hideBackButton: true,
                    height: 140,
                    imageName: imagePath,
                    width: 140,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Company name
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.minimumSideMargin - 6,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      companyName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4.5,
                        vertical: 3,
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
                              fontSize: 12.5,
                              fontWeight: FontWeight.w900,
                              color: Colors.orange.shade300,
                            ),
                          ),
                          Icon(
                            color: Colors.orange.shade300,
                            Icons.loyalty,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Title
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.minimumSideMargin - 6,
                  right: Dimensions.minimumSideMargin - 6,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // AppIcon(
                    //   icon: Icons.favorite_outline_outlined,
                    //   size: Dimensions.cardIconSize,
                    //   backgroundColor: Colors.white,
                    //   iconColor: Colors.black,
                    //   hasBorder: true,
                    // ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              // Description
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.minimumSideMargin - 6,
                ),
                child: Text(
                  description,
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.grey.shade600,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
