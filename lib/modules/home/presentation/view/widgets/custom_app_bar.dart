import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/search_text_field.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        color: Colors.white,
        child: Row(
          children: [
            //1:Button Drawer
            GestureDetector(
                onTap: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                child: const Icon(
                  FontAwesomeIcons.bars,
                  size: 34,
                  color: Color(0xFF4F200D),
                )),
            //SizedBox
            const SizedBox(
              width: 8,
            ),
            //2: Search text Filed
            const Expanded(
              child: SearchTextField(),
            ),
            //SizedBox
            const SizedBox(
              width: 8,
            ),
            //3: Notifications Icon
            const Icon(
              Icons.notifications_none,
              size: 34,
              color: Color(0xFF4F200D),
            ),
            const SizedBox(
              width: 8,
            ),
            //4:Location Location
            const Icon(
              Icons.location_on_outlined,
              size: 34,
              color: Color(0xFF4F200D),
            )
          ],
        ),
      ),
    );
  }
}
