import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/modules/home/presentation/manager/monument/monument_cubit.dart';
import 'package:iteru_app/modules/home/presentation/manager/museum/museum_cubit.dart';
import 'package:iteru_app/modules/hotels/presenation/view_model/cubit/hotel_cubit.dart';
import 'package:iteru_app/modules/research/view/manager/hotel_search_cubit.dart';
import 'package:iteru_app/modules/research/view/manager/monument_search_cubit.dart';
import 'package:iteru_app/modules/research/view/manager/museum_search_cubit.dart';
import 'package:iteru_app/modules/research/view/research_view.dart';

class Searchbutton extends StatelessWidget {
  const Searchbutton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => MultiBlocProvider(
              providers: [
                BlocProvider.value(value: context.read<MuseumCubit>()),
                BlocProvider.value(value: context.read<MonumentCubit>()),
                BlocProvider.value(value: context.read<HotelCubit>()),
                BlocProvider(create: (_) => SearchMuseumCubit()),
                BlocProvider(create: (_) => SearchMonumentCubit()),
                BlocProvider(create: (_) => SearchHotelCubit()),
              ],
              child: const ResearchView(),
            ),
          ),
        );
      },
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: isDarkMode ? Colors.grey[800] : Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isDarkMode ? Colors.white54 : Colors.black12,
          ),
        ),
        child: Row(
          children: [
            const Icon(Icons.search, color: Colors.grey),
            const SizedBox(width: 8),
            Text(
              'Search...',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
