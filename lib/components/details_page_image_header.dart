import 'package:flutter/material.dart';

import '../helpers/app_icon.dart';
import '../helpers/dimensions.dart';

class DetailsPageImageHeader extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadiusValue;
  final String imageName;
  final bool hideBackButton;

  const DetailsPageImageHeader({
    Key? key,
    required this.width,
    required this.height,
    required this.borderRadiusValue,
    required this.imageName,
    required this.hideBackButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.only(left: 4.0, right: 4.0, top: 4.0),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              // width: double.maxFinite,
              width: width,
              // height: Dimensions.couponHeaderImageSize,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(
                  borderRadiusValue,
                )),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'lib/images/$imageName.jpg',
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: Dimensions.minimumTopMargin,
            left: Dimensions.minimumSideMargin,
            right: Dimensions.minimumSideMargin,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: AppIcon(
                    iconSize: 16,
                    backgroundColor:
                        hideBackButton ? Colors.transparent : Colors.white,
                    iconColor:
                        hideBackButton ? Colors.transparent : Colors.black,
                    icon: Icons.arrow_back,
                    hasBorder: false,
                  ),
                ),
                const AppIcon(
                  iconSize: 16,
                  icon: Icons.favorite_outline,
                  hasBorder: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
