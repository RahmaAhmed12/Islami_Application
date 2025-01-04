import 'package:flutter/material.dart';
import 'package:islami_c13_sun/ui/screens/home/home.dart';
import 'package:islami_c13_sun/ui/screens/onboarding/onboarding_model.dart';
import 'package:islami_c13_sun/ui/utils/app_colors.dart';
import 'package:islami_c13_sun/ui/utils/app_styles.dart';
import 'package:islami_c13_sun/ui/utils/asset_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  static const routeName = "onboarding_screen";

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController();
  int currentPage = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void updatePage(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: PageView.builder(
          controller: controller,
          itemCount: pages.length,
          onPageChanged: updatePage, // Update the current page when it changes
          itemBuilder: (_, i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(AssetsManager.islamiLogo),
                        const SizedBox(height: 10),
                        Image.asset(
                          pages[i].image,
                          width: double.infinity,
                          height: 300,
                        ),
                        const SizedBox(height: 5),
                        Text(pages[i].headText, style: AppStyles.primaryBold24),
                        const SizedBox(height: 25),
                        Text(
                          pages[i].descriptionText,
                          textAlign: TextAlign.center,
                          style: AppStyles.primaryBold16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      // bottomSheet: Container(
      //   color: AppColors.black,
      //   height: 80,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       // Back button: Only visible if not on the first page
      //       if (currentPage > 0)
      //         TextButton(
      //           onPressed: () {
      //             controller.previousPage(
      //               duration: const Duration(milliseconds: 300),
      //               curve: Curves.easeInOut,
      //             );
      //           },
      //           child: const Text(
      //             'Back',
      //             style: AppStyles.primaryBold14,
      //           ),
      //         ),
      //       SmoothPageIndicator(
      //         controller: controller,
      //         count: pages.length,
      //         effect: ExpandingDotsEffect(
      //           dotWidth: 8.0,
      //           dotHeight: 8.0,
      //           expansionFactor: 3,
      //           activeDotColor: AppColors.primary,
      //           dotColor: Colors.grey,
      //           spacing: 8.0,
      //         ),
      //       ),
      //       TextButton(
      //         onPressed: () {
      //           if (currentPage == pages.length - 1) {
      //             // Navigate to home screen
      //             Navigator.pushReplacementNamed(context, Home.routeName
      //             );
      //           } else {
      //             controller.nextPage(
      //               duration: const Duration(milliseconds: 300),
      //               curve: Curves.easeInOut,
      //             );
      //           }
      //         },
      //         child: Text(
      //           currentPage == pages.length - 1 ? 'Finish' : 'Next',
      //           style: AppStyles.primaryBold14,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      bottomSheet: Container(
        color: AppColors.black,
        height: 80,
        child: Row(
          children: [
            // Back button: Only visible if not on the first page
            if (currentPage > 0)
              TextButton(
                onPressed: () {
                  controller.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: const Text(
                  'Back',
                  style: AppStyles.primaryBold14,
                ),
              ),

            // Spacer to ensure SmoothPageIndicator stays centered
            const Spacer(),

            // Centered SmoothPageIndicator
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: ExpandingDotsEffect(
                  dotWidth: 8.0,
                  dotHeight: 8.0,
                  expansionFactor: 3,
                  activeDotColor: AppColors.primary,
                  dotColor: Colors.grey,
                  spacing: 8.0,
                ),
              ),
            ),

            // Spacer to push the Next/Finish button to the right
            const Spacer(),

            // Next/Finish button
            TextButton(
              onPressed: () {
                if (currentPage == pages.length - 1) {
                  // Navigate to home screen
                  Navigator.pushReplacementNamed(context, Home.routeName);
                } else {
                  controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Text(
                currentPage == pages.length - 1 ? 'Finish' : 'Next',
                style: AppStyles.primaryBold14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
