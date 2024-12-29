import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomActionsHomeView extends StatelessWidget {
  const CustomActionsHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> icons = [
      Assets.resourceImagesAbout,
      Assets.resourceImagesReloade,
      Assets.resourceImagesLogout
    ];
    return Padding(
      padding: const EdgeInsets.only(right: 17),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
              children: List.generate(icons.length, (index) {
            return SvgPicture.asset(
              icons[index],
              height: 40,
            );
          })),
          const SizedBox(
            height: 18,
          )
        ],
      ),
    );
  }
}
