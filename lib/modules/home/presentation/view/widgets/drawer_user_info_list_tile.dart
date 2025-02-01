//2:UserInfoListTile
import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';

class DrawerUserInfoListTile extends StatelessWidget {
  const DrawerUserInfoListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffffffff),
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
                  Assets.imagesPersonalPhoto,
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(
            width: 20,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nabil Gabr',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                'nabilgabr@gmail.com',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }
} //2: End UserInfoListTile
