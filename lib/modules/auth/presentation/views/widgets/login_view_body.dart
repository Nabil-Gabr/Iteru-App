import 'package:flutter/material.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/core/services/shared_preferences_singleton.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/onboarding_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: GestureDetector(
            onTap: () {
              SharedPrefs.removeShared(kIsOnboardingViewSeen);
              Navigator.of(context)
                  .pushReplacementNamed(OnboardingView.routeName);
            },
            child: const Text(
              'Login View',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pushReplacementNamed(OnboardingView.routeName);
            },
            child: const Text('Back')),
      ],
    );
  }
}
