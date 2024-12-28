import 'package:booklyapp/Features/home/presentation/views/widget/book_details_view_body.dart';
import 'package:booklyapp/Features/home/presentation/views/widget/custom_Avatar.dart';

import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookeDetailsView extends StatelessWidget {
  const BookeDetailsView({super.key});

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
        leadingWidth: double.infinity,
        backgroundColor: const Color(0xFF7968FF),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomAvatar(),
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Text(
                    'Johnathan',
                    style: Fontstyle.proxima_Bold_19.copyWith(fontSize: 22),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('📚🎉')
                ],
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SvgPicture.asset(
              Assets.resourceImagesLogout,
              height: 50,
            ),
          )
        ],
      ),
      body: const BookDetailsViewBody(),
    );
  }
}
