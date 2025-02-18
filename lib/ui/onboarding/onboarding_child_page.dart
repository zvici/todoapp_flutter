import 'package:flutter/material.dart';
import 'package:todo_app/ui/utils/enums/onboarding_page_position.dart';

class OnboardingChildPage extends StatelessWidget {
  final OnboardingPagePosition onboardingPagePosition;
  final VoidCallback nextOnPressed;
  final VoidCallback backOnPressed;
  final VoidCallback skipOnPressed;

  const OnboardingChildPage({
    super.key,
    required this.onboardingPagePosition,
    required this.nextOnPressed,
    required this.backOnPressed,
    required this.skipOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildSkipButton(),
            _buildOnboardingImage(),
            _buildOnboardingPageControl(),
            _buildOnboardingTitleAndContent(),
            _buildOnboardingNextAndPrevButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildSkipButton() {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      margin: EdgeInsets.only(top: 14),
      child: TextButton(
        onPressed: skipOnPressed,
        child: Text(
          'Skip',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Lato',
            color: Colors.white.withValues(alpha: 0.44),
          ),
        ),
      ),
    );
  }

  Widget _buildOnboardingImage() {
    return Image.asset(
      onboardingPagePosition.onboardingPageImage(),
      height: 296,
      width: 271,
      fit: BoxFit.contain,
    );
  }

  Widget _buildOnboardingPageControl() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 4,
            width: 26,
            decoration: BoxDecoration(
              color: Colors.white.withValues(
                alpha:
                    onboardingPagePosition == OnboardingPagePosition.page1
                        ? 1
                        : 0.44,
              ),
              borderRadius: BorderRadius.circular(56),
            ),
          ),
          Container(
            height: 4,
            width: 26,
            margin: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white.withValues(
                alpha:
                    onboardingPagePosition == OnboardingPagePosition.page2
                        ? 1
                        : 0.44,
              ),
              borderRadius: BorderRadius.circular(56),
            ),
          ),
          Container(
            height: 4,
            width: 26,
            decoration: BoxDecoration(
              color: Colors.white.withValues(
                alpha:
                    onboardingPagePosition == OnboardingPagePosition.page3
                        ? 1
                        : 0.44,
              ),
              borderRadius: BorderRadius.circular(56),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardingTitleAndContent() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            onboardingPagePosition.onboardingPageTitle(),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white.withValues(alpha: 0.87),
              fontFamily: 'Lato',
            ),
          ),
          const SizedBox(height: 8),
          Text(
            onboardingPagePosition.onboardingPageContent(),
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withValues(alpha: 0.87),
              fontFamily: 'Lato',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardingNextAndPrevButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: backOnPressed,
            child: Text(
              'Back',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withValues(alpha: 0.44),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF8875FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: nextOnPressed,
            child: Text(
              onboardingPagePosition == OnboardingPagePosition.page3
                  ? 'Get Started'
                  : 'Next',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
