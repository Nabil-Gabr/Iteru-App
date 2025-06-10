import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/modules/recommendation/presentation/manager/cubit/recommendation_cubit.dart';
import 'package:iteru_app/modules/recommendation/presentation/view/recommendation_result_view.dart';
import 'package:iteru_app/modules/recommendation/presentation/view/widgets/history_selector.dart';
import 'package:iteru_app/modules/recommendation/presentation/view/widgets/loading_overlay.dart';
import 'package:iteru_app/modules/recommendation/presentation/view/widgets/location_selector.dart';
import 'package:iteru_app/modules/recommendation/presentation/view/widgets/recommendation_button.dart';

class RecommendationViewBody extends StatefulWidget {
  const RecommendationViewBody({super.key});

  @override
  State<RecommendationViewBody> createState() => _RecommendationViewBodyState();
}

class _RecommendationViewBodyState extends State<RecommendationViewBody>
    with SingleTickerProviderStateMixin {
  final List<String> locations = [
    'Alexandria',
    'Assuit',
    'Aswan',
    'Beni Suef',
    'Cairo',
    'Giza',
    'Kafr El-Sheikh',
    'Luxor',
    'Minya',
    'Qena',
    'Red Sea',
    'Sohag',
    'South Sinai',
    'Suez',
  ];

  final List<String> historyTypes = [
    'Christian',
    'Greco-Roman',
    'Islamic',
    'Modern Egypt',
    'Ancient Egypt',
  ];

  String? selectedLocation;
  final Set<String> selectedHistories = {};

  late final AnimationController _controller;
  late final Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onRecommendPressed() {
    final locationKey = locations.indexOf(selectedLocation!);
    final Map<String, int> historyMap = {
      for (var type in historyTypes)
        type: selectedHistories.contains(type) ? 1 : 0,
    };

    context.read<RecommendationCubit>().sendRecommendation(
          location: locationKey,
          christian: historyMap["Christian"]!,
          grecoRoman: historyMap["Greco-Roman"]!,
          bislamic: historyMap["Islamic"]!,
          modernEgypt: historyMap["Modern Egypt"]!,
          ancientEgypt: historyMap["Ancient Egypt"]!,
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RecommendationCubit, RecommendationState>(
      listener: (context, state) {
        if (state is RecommendationSuccess) {
          Navigator.pushNamed(
            context,
            RecommendationResultView.routeName,
            arguments: state.recommentationEntity,
          );
        } else if (state is RecommendationFailutr) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage)),
          );
        }
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SlideTransition(
              position: _slideAnimation,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LocationSelector(
                    selectedLocation: selectedLocation,
                    onTap: (value) {
                      setState(() => selectedLocation = value);
                    },
                  ),
                  const SizedBox(height: 30),
                  HistorySelector(
                    historyTypes: historyTypes,
                    selectedHistories: selectedHistories,
                    onSelectionChanged: () => setState(() {}),
                  ),
                  const Spacer(),
                  RecommendationButton(
                    isEnabled: selectedLocation != null &&
                        selectedHistories.isNotEmpty,
                    onPressed: _onRecommendPressed,
                  ),
                ],
              ),
            ),
          ),
          const LoadingOverlay(),
        ],
      ),
    );
  }
}
