import 'package:booklyapp/Features/home/presentation/views/widget/home_view_body.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/profile_details.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> icons = [
      Assets.resourceImagesAbout,
      Assets.resourceImagesReloade,
      Assets.resourceImagesLogout
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: const Color(0xFF7968FF),
        leadingWidth: double.infinity,
        leading: const ProfileDetails(),
        actions: [
          Padding(
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
          ),
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
