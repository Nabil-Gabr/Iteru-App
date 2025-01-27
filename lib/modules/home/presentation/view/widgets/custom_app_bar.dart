import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;


  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.only(top: 20,),
      child: Container(
                width: MediaQuery.sizeOf(context).width ,
                color: Colors.white,
                child: Row(
        children: [
          IconButton(onPressed: (){
                  scaffoldKey.currentState!.openDrawer();
                }, icon: const Icon(Icons.menu)),
          const SizedBox(height: 20,),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              alignment: Alignment.centerLeft,
              height: 28,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(23)),
                border: Border.fromBorderSide(BorderSide(width: 1.5,color: Color(0xff4F200D)))
              ),
              child: const Icon(Icons.search),
            ),
          ),
          const SizedBox(height: 20,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.location_on_outlined))
        ],
      ),
              ),
    );
  }
}