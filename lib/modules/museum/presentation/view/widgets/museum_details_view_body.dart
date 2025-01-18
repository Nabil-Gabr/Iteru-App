import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/widgets/image_details_widget.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/screen_details_action.dart';

class MuseumDetailsViewBody extends StatelessWidget {
  const MuseumDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //1:Image
        ImageDetailsWidget(image: Assets.imagesImageTestMohamed),
        //2:SizedBox 16
        SizedBox(
          height: 16,
        ),
        //3:ScreenDetailsAction
        Expanded(child: ScreenDetailsAction())
      ],
    );
  }
}
