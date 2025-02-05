import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/museum_list_view_item.dart';

class MuseumListView extends StatelessWidget {
  const MuseumListView({
    super.key,
  });

  static const List<MuseumItemEntity> items = [
    //item 1
    MuseumItemEntity(
      coverImage: Assets.imagesPyramids,
      name: 'The Egyptian museum in Cairo',
      location: 'Cairo, Egypt',
      description:
          '''The Graeco-Roman Museum of Alexandria is one of Egypt's principal museums, the oldest building in Egypt to be architecturally designed for the purpose of preserving and displaying antiquities. Furthermore, it is the only museum fully dedicated to the antiquities and civilization of Egypt during the Greek and Roman eras.
             
             Since 1889, the Italian Giuseppe Botti sought to establish a museum for Alexandria that would protect its antiquities from displacement and destruction. He continued to work on that until the decision to establish the museum was issued on June 1, 1892. The museum began in a modest rented property, and Khedive Abbas Helmy II inaugurated it on 17 October 1892. Giuseppe Botti was its first director.
             
             Since its inception, the museum has sparked a cultural renaissance about interest in the city’s archaeological activities. Discoveries increased, and there became a pressing need for a new spacious building. On September 12, 1894, Nubar Pasha laid the cornerstone for the new museum to be built on land owned and adjacent to the Municipal Council. The new structure was designed by the architects Dietrich and Stenon in a neoclassical style. The construction process took one year, and it was inaugurated again by Khedive Abbas Helmy II on September 26, 1895.
             
             After Botti's death in October 1903, the management of the museum remained Italian, Evaristo Breccia took charge in April 1904, and Achille Adriani succeeded him from 1932 to 1940. from 1940-1947, the museum was run by Alan Rowe. from 1948 to 1953, Adriani took over management once more. Egyptian archaeologists have been in charge of the museum since 1953 onward.
             
             In 1982, a development project was implemented for the museum, during which a new wing was added connecting the western and eastern wings. In September 2005, a decision was made to close the museum in order to carry out a comprehensive project to expand and develop the museum. The project stalled for ten years until work was resumed in April 2015. By creating an upper floor, a new interior design, and a new display scenario are applied.
             ''',
      closingTime: '05:00 PM',
      openingTime: '09:00 AM',
      egyptiansPriceAdult: '40 EGP',
      egyptiansPriceStudent: '20 EGP',
      foreignerPriceAdult: '400 EGP',
      foreignerPriceStudent: '200 EGP',
      ourInsiderTips: [
        {'title': ' Ramadan Visit Hours', 'subTitle': '09:00am – 04:00pm'},
        {
          'title': ' Last Ticket',
          'subTitle': 'The tickets window closes at 3:00 PM'
        },
        {
          'title': ' Free entry policy',
          'subTitle': 'Egyptians and Arabs seniors aged 60 and over'
        },
      ],
      illustrativeImages: [
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
      ],
    ),
    //item 2
    MuseumItemEntity(
      coverImage: Assets.imagesPyramids,
      name: 'The Egyptian museum in Cairo',
      location: 'Cairo, Egypt',
      description:
          ''''The Graeco-Roman Museum of Alexandria is one of Egypt's principal museums, the oldest building in Egypt to be architecturally designed for the purpose of preserving and displaying antiquities. Furthermore, it is the only museum fully dedicated to the antiquities and civilization of Egypt during the Greek and Roman eras.
             
             Since 1889, the Italian Giuseppe Botti sought to establish a museum for Alexandria that would protect its antiquities from displacement and destruction. He continued to work on that until the decision to establish the museum was issued on June 1, 1892. The museum began in a modest rented property, and Khedive Abbas Helmy II inaugurated it on 17 October 1892. Giuseppe Botti was its first director.
             
             Since its inception, the museum has sparked a cultural renaissance about interest in the city’s archaeological activities. Discoveries increased, and there became a pressing need for a new spacious building. On September 12, 1894, Nubar Pasha laid the cornerstone for the new museum to be built on land owned and adjacent to the Municipal Council. The new structure was designed by the architects Dietrich and Stenon in a neoclassical style. The construction process took one year, and it was inaugurated again by Khedive Abbas Helmy II on September 26, 1895.
             
             After Botti's death in October 1903, the management of the museum remained Italian, Evaristo Breccia took charge in April 1904, and Achille Adriani succeeded him from 1932 to 1940. from 1940-1947, the museum was run by Alan Rowe. from 1948 to 1953, Adriani took over management once more. Egyptian archaeologists have been in charge of the museum since 1953 onward.
             
             In 1982, a development project was implemented for the museum, during which a new wing was added connecting the western and eastern wings. In September 2005, a decision was made to close the museum in order to carry out a comprehensive project to expand and develop the museum. The project stalled for ten years until work was resumed in April 2015. By creating an upper floor, a new interior design, and a new display scenario are applied.
             ''',
      closingTime: '05:00 PM',
      openingTime: '09:00 AM',
      egyptiansPriceAdult: '40',
      egyptiansPriceStudent: '20',
      foreignerPriceAdult: '400',
      foreignerPriceStudent: '200',
      ourInsiderTips: [
        {'title': ' Ramadan Visit Hours', 'subTitle': '09:00am – 04:00pm'},
        {
          'title': ' Last Ticket',
          'subTitle': 'The tickets window closes at 3:00 PM'
        },
        {
          'title': ' Free entry policy',
          'subTitle': 'Egyptians and Arabs seniors aged 60 and over'
        },
      ],
      illustrativeImages: [
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
      ],
    ),
    MuseumItemEntity(
      coverImage: Assets.imagesPyramids,
      name: 'The Egyptian museum in Cairo',
      location: 'Cairo, Egypt',
      description:
          ''''The Graeco-Roman Museum of Alexandria is one of Egypt's principal museums, the oldest building in Egypt to be architecturally designed for the purpose of preserving and displaying antiquities. Furthermore, it is the only museum fully dedicated to the antiquities and civilization of Egypt during the Greek and Roman eras.
             
             Since 1889, the Italian Giuseppe Botti sought to establish a museum for Alexandria that would protect its antiquities from displacement and destruction. He continued to work on that until the decision to establish the museum was issued on June 1, 1892. The museum began in a modest rented property, and Khedive Abbas Helmy II inaugurated it on 17 October 1892. Giuseppe Botti was its first director.
             
             Since its inception, the museum has sparked a cultural renaissance about interest in the city’s archaeological activities. Discoveries increased, and there became a pressing need for a new spacious building. On September 12, 1894, Nubar Pasha laid the cornerstone for the new museum to be built on land owned and adjacent to the Municipal Council. The new structure was designed by the architects Dietrich and Stenon in a neoclassical style. The construction process took one year, and it was inaugurated again by Khedive Abbas Helmy II on September 26, 1895.
             
             After Botti's death in October 1903, the management of the museum remained Italian, Evaristo Breccia took charge in April 1904, and Achille Adriani succeeded him from 1932 to 1940. from 1940-1947, the museum was run by Alan Rowe. from 1948 to 1953, Adriani took over management once more. Egyptian archaeologists have been in charge of the museum since 1953 onward.
             
             In 1982, a development project was implemented for the museum, during which a new wing was added connecting the western and eastern wings. In September 2005, a decision was made to close the museum in order to carry out a comprehensive project to expand and develop the museum. The project stalled for ten years until work was resumed in April 2015. By creating an upper floor, a new interior design, and a new display scenario are applied.
             ''',
      closingTime: '05:00 PM',
      openingTime: '09:00 AM',
      egyptiansPriceAdult: '40',
      egyptiansPriceStudent: '20',
      foreignerPriceAdult: '400',
      foreignerPriceStudent: '200',
      ourInsiderTips: [
        {'title': ' Ramadan Visit Hours', 'subTitle': '09:00am – 04:00pm'},
        {
          'title': ' Last Ticket',
          'subTitle': 'The tickets window closes at 3:00 PM'
        },
        {
          'title': ' Free entry policy',
          'subTitle': 'Egyptians and Arabs seniors aged 60 and over'
        },
      ],
      illustrativeImages: [
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
        Assets.imagesImageTestMohamed,
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => Padding(
                  padding: const EdgeInsetsDirectional.only(end: 16),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width *
                        0.7, // 80% من عرض الشاشة
                    child: MuseumListViewItem(
                      museumItemEntity: e,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
