import 'package:booklyapp/Features/home/Data/models/book_model/book_modle.dart';
import 'package:booklyapp/core/const/widget/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TakingAction extends StatelessWidget {
  const TakingAction({super.key, required this.bookModle});
  final BookModle bookModle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Free',
              function: () {
                launchUrl(Uri.parse(bookModle.volumeInfo!.previewLink!));
              },
              Backgroundcolor: Colors.red,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Preview',
              function: () =>
                  launchUrl(Uri.parse(bookModle.volumeInfo!.previewLink!)),
              Backgroundcolor: Colors.green,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
          )
        ],
      ),
    );
  }
}
