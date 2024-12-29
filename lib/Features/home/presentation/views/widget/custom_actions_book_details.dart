import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomActionsBookDetails extends StatelessWidget {
  const CustomActionsBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SvgPicture.asset(
        Assets.resourceImagesLogout,
        height: 50,
      ),
    );
  }
}
