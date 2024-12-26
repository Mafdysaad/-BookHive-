import 'package:booklyapp/Features/home/presentation/views/widget/custom_Avtair.dart';
import 'package:booklyapp/core/utils/fontstyle.dart';
import 'package:flutter/material.dart';

class ProfileDatailes extends StatelessWidget {
  const ProfileDatailes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ListTile(
          leading: const CustomAvtair(),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enjoy your feed',
                style: Fontstyle.proxima_regular_14,
              ),
              Row(
                children: [
                  Text(
                    'Johnathan',
                    style: Fontstyle.proxima_Bold_19,
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
        const SizedBox(
          height: 11,
        )
      ],
    );
  }
}
