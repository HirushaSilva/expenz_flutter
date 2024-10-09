import 'package:expenz_flutter/data/onboarding_data.dart';
import 'package:expenz_flutter/screens/onboarding/front_page.dart';
import 'package:expenz_flutter/screens/onboarding/shared_page.dart';
import 'package:expenz_flutter/screens/user_data_screen.dart';
import 'package:expenz_flutter/utils/colors.dart';
import 'package:expenz_flutter/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  //page controler
  final PageController _controller = PageController();
  bool showDetailsPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Stack(
          children: [
            //onboarding screen
            PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  showDetailsPage = index >= 3;
                });
              },
              children: [
                const FrontPage(),
                SharedPage(
                  imageUrl: OnboardingData.onboardingDataList[0].imageUrl,
                  title: OnboardingData.onboardingDataList[0].title,
                  description: OnboardingData.onboardingDataList[0].description,
                ),
                SharedPage(
                  imageUrl: OnboardingData.onboardingDataList[1].imageUrl,
                  title: OnboardingData.onboardingDataList[1].title,
                  description: OnboardingData.onboardingDataList[1].description,
                ),
                SharedPage(
                  imageUrl: OnboardingData.onboardingDataList[2].imageUrl,
                  title: OnboardingData.onboardingDataList[2].title,
                  description: OnboardingData.onboardingDataList[2].description,
                ),
              ],
            ),
            //page dot indicator
            Container(
              alignment: const Alignment(0, 0.75),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: const WormEffect(
                  activeDotColor: kMainColor,
                  dotColor: kLightGrey,
                ),
              ),
            ),
            //navigating button
            Positioned(
              bottom: 20,
              right: 25,
              left: 25,
              child: !showDetailsPage
                  ? InkWell(
                      onTap: () {
                        _controller.animateToPage(
                          _controller.page!.toInt() + 1,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: const CustomButtom(
                        buttonName: "Next",
                        buttonColor: kMainColor,
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UserDataScreen(),
                          ),
                        );
                      },
                      child: const CustomButtom(
                        buttonName: "Get Started",
                        buttonColor: kMainColor,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
