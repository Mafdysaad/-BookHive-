import 'package:booklyapp/core/const/widget/custom_buttom.dart';
import 'package:flutter/material.dart';

class TakingAction extends StatelessWidget {
  const TakingAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99 \$',
              Backgroundcolor: Colors.red,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              Backgroundcolor: Colors.green,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
          )
        ],
      ),
    );
  }
}
