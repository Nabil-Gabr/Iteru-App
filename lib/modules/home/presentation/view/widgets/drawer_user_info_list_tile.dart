//2:UserInfoListTile
import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';

class DrawerUserInfoListTile extends StatelessWidget {
  const DrawerUserInfoListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color containerColor = isDarkMode ? const Color(0xff252836) : const Color(0xffF6F1E9);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        color: containerColor,
        elevation: 0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 65,
              height: 65,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(65),
                  child: Image.asset(
                    Assets.imagesPersonalOne,
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(
              width: 20,
            ),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "James Alex",
                  style: AppTextStyles.medium20n(context),
                ),
                Text(
                  'james71@gmail.com',
                  style: AppTextStyles.regular18(context),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
} //2: End UserInfoListTile
