import 'package:booklyapp/Features/home/presentation/views/widget/book\'s_cover.dart';
import 'package:booklyapp/core/utils/fontstyle.dart';
import 'package:flutter/material.dart';

class HorzantilBookListview extends StatelessWidget {
  const HorzantilBookListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text('You Can also Like ', style: Fontstyle.proxima_Bold_17),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .20,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, indx) {
              return const Padding(
                padding: EdgeInsets.all(8.0),
                child: BookCover(
                    url:
                        'EgZjaHJvbWUyBggAEEUYOTIHCAEQABiABDINCAIQLhivARjHARiABDIHCAMQABiABDINCAQQLhjHARjRAxiABDIHCAUQABiABDIPCAYQABgKGIMBGLEDGIAEMgcIBxAAGIAEMgcICBAAGIAE0gEJNTIyM2owajE1qAIIsAIB'),
              );
            },
            itemCount: 8,
          ),
        ),
      ],
    );
  }
}
