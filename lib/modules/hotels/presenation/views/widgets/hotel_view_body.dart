import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/modules/hotels/presenation/view_model/cubit/hotel_cubit.dart';
import 'package:iteru_app/modules/hotels/presenation/views/widgets/hotel_item.dart';

class HotelViewBody extends StatelessWidget {
  const HotelViewBody({
    super.key,
  });
  
  

 @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelCubit, HotelState>(
      builder: (context, state) {
        if (state is HotelLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is HotelFailure) {
          return Center(child: Text(state.errMessage));
        } else if (state is HotelSuccess) {
          return ListView.builder(
            itemCount: state.hotelEntity.length,
            itemBuilder: (context, index) {
              final hotel = state.hotelEntity[index];
              return HotelItem(hotel: hotel);
            },
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}


