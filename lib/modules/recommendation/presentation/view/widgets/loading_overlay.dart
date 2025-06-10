import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/modules/recommendation/presentation/manager/cubit/recommendation_cubit.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendationCubit, RecommendationState>(
      builder: (context, state) {
        if (state is RecommendationLoading) {
          return Container(
            color: Colors.black.withOpacity(0.3),
            child: const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(color: Colors.orange),
                  SizedBox(height: 12),
                  Text(
                    'Fetching Recommendations...',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
