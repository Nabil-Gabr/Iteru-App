import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/widgets/custom_background_container.dart';
import 'package:iteru_app/core/widgets/gallery_widget.dart';
import 'package:iteru_app/core/widgets/image_details_widget.dart';
import 'package:iteru_app/core/widgets/naivgation_button.dart';
import 'package:iteru_app/core/widgets/rating_widget.dart';
import 'package:iteru_app/modules/home/domain/entites/monument_item_entity.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/description_section.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/labeled_value_row.dart';

class TourismTypesDetailsViewBody extends StatelessWidget {
  const TourismTypesDetailsViewBody({super.key, required this.monumentEntity,});
  final MonumentEntity monumentEntity;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              //1:Image
              ImageDetailsWidget(
                image: monumentEntity.coverPicture,
                title: monumentEntity.name,
                condition: monumentEntity.weather.condition,
                tempC: monumentEntity.weather.tempC,
                humidity: monumentEntity.weather.humidity,
                windKph: monumentEntity.weather.windKph,
              ),
              //2:SizedBox 16
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        //3:ScreenDetailsAction
        SliverToBoxAdapter(
          child: MonumentScreenDetailsAction(
            monumentEntity: monumentEntity,
          ),
        )
      ],
    );
  }
}

class MonumentScreenDetailsAction extends StatefulWidget {
  const MonumentScreenDetailsAction({
    super.key,
    required this.monumentEntity,
  });
  final MonumentEntity monumentEntity;

  @override
  State<MonumentScreenDetailsAction> createState() => _MonumentScreenDetailsActionState();
}

class _MonumentScreenDetailsActionState extends State<MonumentScreenDetailsAction> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List item = [
      'Overview',
      'Gallery',
      'Rating',
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: item.asMap().entries.map((e) {
              var index = e.key;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: NaivgationButton(
                  isSelected: selectedIndex == index,
                  text: item[index],
                ),
              );
            }).toList(),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        selectedIndex == 0
            ? MonumentOverViewWidget(monumentEntity: widget.monumentEntity)
            : selectedIndex == 1
                ? GalleryWidget(
                    imageGalleryItems:
                        widget.monumentEntity.images,
                    itemCount:
                        widget.monumentEntity.images.length,
                  )
                : const RatingWidget()
      ],
    );
  }
}

class MonumentOverViewWidget extends StatelessWidget {
  const MonumentOverViewWidget({
    super.key,
    required this.monumentEntity,
  });
  final MonumentEntity monumentEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        //1-Sction 1 refactor Done
          MonumentPlaceDetailsSection(
            monumentEntity: monumentEntity,
          ),
          const SizedBox(
            height: 16,
          ),
          //2-section 2 Refactor Done
          DescriptionSection(description: monumentEntity.description),
          const SizedBox(
            height: 22,
          ),
          //2-section 3
          // OurInsiderTips(ourInsiderTips: museumItemEntity.ourInsiderTips),
          // //Rafactor

          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}




class MonumentPlaceDetailsSection extends StatelessWidget {
  const MonumentPlaceDetailsSection({
    super.key,
    required this.monumentEntity,
  });
  final MonumentEntity monumentEntity;

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          //1-refactor Section Done
          LabeledValueRow(
            widget: const Icon(
              Icons.location_pin,
              color: Color(0xffFF8400),
            ),
            label: 'Location:  ',
            value: monumentEntity.location,
          ),
          const SizedBox(
            height: 18,
          ),
          // //2-refactor Section Done
          // OpeningHoursRow(
          //   openingTime: museumItemEntity.openingTime,
          //   closingTime: museumItemEntity.closingTime,
          // ),
          const SizedBox(
            height: 18,
          ),
          //3-refactor Section Done
          MonumentTicketsWidget(tickets: monumentEntity.tickets)
        ],
      ),
    );
  }
}



class MonumentTicketsWidget extends StatelessWidget {
  const MonumentTicketsWidget({
    super.key,
    required this.tickets,
  });

  final Tickets tickets;

  @override
  Widget build(BuildContext context) {
    final foreignerPricing = {
      'Adult': tickets.prices['foreign_adult'] ?? '',
      'Student': tickets.prices['foreign_student'] ?? '',
      'Other': tickets.prices['foreigners'] ?? '',
    };

    final egyptianPricing = {
      'Adult': tickets.prices['egyptian_adult'] ?? '',
      'Student': tickets.prices['egyptian_student'] ?? '',
      'Arabs': tickets.prices['egyptian_arabs'] ?? '',
    };

    final generalPricing = {
      'Adult': tickets.prices['adult'] ?? '',
      'Student': tickets.prices['student'] ?? '',
      'Child': tickets.prices['child'] ?? '',
      'Senior': tickets.prices['senior'] ?? '',
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          SvgPicture.asset(Assets.imagesIconTickets),
          const SizedBox(width: 8),
          const Text(
            'Tickets:',
            style: TextStyle(
              color: Color(0xffC7C7C7),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ]),
        const SizedBox(height: 16),
        MonumentTicketPricingColumn(
          category: 'General:',
          pricingMap: generalPricing,
        ),
        const SizedBox(height: 16),
        MonumentTicketPricingColumn(
          category: 'Foreigners:',
          pricingMap: foreignerPricing,
        ),
        const SizedBox(height: 16),
        MonumentTicketPricingColumn(
          category: 'Egyptians:',
          pricingMap: egyptianPricing,
        ),
      ],
    );
  }
}










class MonumentTicketPricingColumn extends StatelessWidget {
  const MonumentTicketPricingColumn({
    super.key,
    required this.category,
    required this.pricingMap,
  });

  final String category;
  final Map<String, String> pricingMap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: const TextStyle(
              color: Color(0xffFF8400),
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 8,
        ),
        // هنا يتم عرض كل القيم غير الفارغة فقط
        ...pricingMap.entries
            .where((entry) => entry.value.isNotEmpty)
            .map((entry) => Column(
                  children: [
                    MonmuntBulletPointRow(
                      label: entry.key,
                      value: entry.value,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ))
            ,
      ],
    );
  }
}


class MonmuntBulletPointRow extends StatelessWidget {
  const MonmuntBulletPointRow({
    super.key,
    required this.label,
    required this.value,
  });
  final String label, value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: LabeledValueRow(
          widget: Container(
            width: 6,
            height: 6,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(6))),
          ),
          label: label,
          value: value),
    );
  }
}