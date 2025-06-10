import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/services/get_it_service.dart';
import 'package:iteru_app/modules/recommendation/domain/repo/recommendation_repo.dart';
import 'package:iteru_app/modules/recommendation/presentation/manager/cubit/recommendation_cubit.dart';
import 'package:iteru_app/modules/recommendation/presentation/view/recommendation_view_body.dart';

class RecommendationView extends StatelessWidget {
  const RecommendationView({super.key});
  static const String routeName = 'RecommendationView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecommendationCubit(getIt<RecommendationRepo>()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Recommendation'),
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.black,
        ),
        body: const RecommendationViewBody(),
      ),
    );
  }
}
