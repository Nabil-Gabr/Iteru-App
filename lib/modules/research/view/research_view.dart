import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/widgets/museum_list_view_item.dart';
import 'package:iteru_app/modules/home/domain/entites/monument_item_entity.dart';
import 'package:iteru_app/modules/home/domain/entites/museum_item_entity.dart';
import 'package:iteru_app/modules/home/presentation/manager/monument/monument_cubit.dart';
import 'package:iteru_app/modules/home/presentation/manager/museum/museum_cubit.dart';
import 'package:iteru_app/modules/home/presentation/view/widgets/tourism_type_list_view_item.dart';
import 'package:iteru_app/modules/hotels/domain/entity/hotel_entity.dart';
import 'package:iteru_app/modules/hotels/presenation/view_model/cubit/hotel_cubit.dart';
import 'package:iteru_app/modules/hotels/presenation/views/hotel_details_view.dart';
import 'package:iteru_app/modules/research/view/manager/hotel_search_cubit.dart';
import 'package:iteru_app/modules/research/view/manager/monument_search_cubit.dart';
import 'package:iteru_app/modules/research/view/manager/museum_search_cubit.dart';
import 'package:iteru_app/modules/research/view/search_type.dart';

class ResearchView extends StatefulWidget {
  const ResearchView({super.key});
  static const String routeName = 'ResearchView';

  @override
  State<ResearchView> createState() => _ResearchViewState();
}

class _ResearchViewState extends State<ResearchView> {
  SearchType selectedType = SearchType.museum;
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // ✅ تأكد إن بيانات الفنادق متحمّلة، لو مش كده حمّلها
    final hotelCubit = context.read<HotelCubit>();
    if (hotelCubit.state is! HotelSuccess) {
      hotelCubit.getHotelsByCity("Cairo"); // المدينة الافتراضية
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        surfaceTintColor: null,
        forceMaterialTransparency: true,
        elevation: 0,
        backgroundColor:
            isDarkMode ? AppColors.darkModePrimary : AppColors.whiteColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 🔘 ToggleButtons - تصميم احترافي
ToggleButtons(
  borderRadius: BorderRadius.circular(8),
  selectedColor: Colors.white,
  fillColor: AppColors.primaryColor,
  color: Colors.black87,
  textStyle: const TextStyle(fontWeight: FontWeight.w600),
  isSelected: [
    selectedType == SearchType.museum,
    selectedType == SearchType.monument,
    selectedType == SearchType.hotel,
  ],
  onPressed: (index) => setState(() {
    selectedType = SearchType.values[index];
    searchController.clear();
  }),
  children: const [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text('Museums'),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text('Monuments'),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text('Hotels'),
    ),
  ],
),
const SizedBox(height: 16),

// 🔍 TextField - تصميم احترافي
TextField(
  controller: searchController,
  decoration: InputDecoration(
    hintText: 'Search...',
    prefixIcon: const Icon(Icons.search),
    filled: true,
    fillColor: Colors.grey.shade100,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey.shade400),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey.shade400),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 2),
    ),
  ),
  onChanged: (query) => _onSearchChanged(context, query),
),


            const SizedBox(height: 16),

            // 📝 Result ListView
            Expanded(child: _buildSearchResults()),
          ],
        ),
      ),
    );
  }

  void _onSearchChanged(BuildContext context, String query) {
    switch (selectedType) {
      case SearchType.museum:
        final museumState = context.read<MuseumCubit>().state;
        if (museumState is MuseumSuccess) {
          final museums = museumState.museumItemEntity;
          context.read<SearchMuseumCubit>().search(query, museums);
        }
        break;

      case SearchType.monument:
        final monumentState = context.read<MonumentCubit>().state;
        if (monumentState is MonumentSuccess) {
          final monuments = monumentState.monumentItemEntity;
          context.read<SearchMonumentCubit>().search(query, monuments);
        }
        break;

      case SearchType.hotel:
        final hotelState = context.read<HotelCubit>().state;
        if (hotelState is HotelSuccess) {
          final hotels = hotelState.hotelEntity;
          context.read<SearchHotelCubit>().search(query, hotels);
        }
        break;
    }
  }

  Widget _buildSearchResults() {
    switch (selectedType) {
      case SearchType.museum:
        return BlocBuilder<SearchMuseumCubit, List<MuseumItemEntity>>(
          builder: (_, list) => ListView.separated(
            itemCount: list.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (_, i) =>
                MuseumListViewItem(museumItemEntity: list[i]),
          ),
        );

      case SearchType.monument:
        return BlocBuilder<SearchMonumentCubit, List<MonumentEntity>>(
          builder: (_, list) => ListView.separated(
            itemCount: list.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (_, i) =>
                MonumentsListViewItem(monumentEntity: list[i]),
          ),
        );

      case SearchType.hotel:
        return BlocBuilder<SearchHotelCubit, List<HotelEntity>>(
          builder: (_, list) => ListView.separated(
            itemCount: list.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (_, i) => HotelEntityListItem(hotel: list[i]),
          ),
        );
    }
  }
}

class HotelEntityListItem extends StatelessWidget {
  const HotelEntityListItem({super.key, required this.hotel});
  final HotelEntity hotel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.hotel, color: Colors.orange),
      title: Text(hotel.name),
      subtitle: Text(hotel.address),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        Navigator.pushNamed(
          context,
          HotelDetailsView.routeName,
          arguments: hotel,
        );
      },
    );
  }
}
