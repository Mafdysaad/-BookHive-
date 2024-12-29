import 'package:booklyapp/Features/home/presentation/views/widget/custom_Avatar.dart';
import 'package:booklyapp/core/utils/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomLeadingBookDetails extends StatelessWidget {
  const CustomLeadingBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
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
    );
  }
}
