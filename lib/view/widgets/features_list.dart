import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'feature_box.dart';

class FeaturedList extends StatelessWidget {
  final String? generatedImageUrl;
  final String? generatedContent;
  final int start;
  final int delay;

  const FeaturedList({
    super.key,
    this.generatedImageUrl,
    this.generatedContent,
    required this.start,
    required this.delay,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: generatedContent == null && generatedImageUrl == null,
      child: Column(
        children: [
          SlideInLeft(
            delay: Duration(milliseconds: start),
            child: const FeatureBox(
              color: AppColors.firstSuggestionBoxColor,
              headerText: 'ChatGPT',
              descriptionText:
                  'A smarter way to stay organized and informed with ChatGPT',
            ),
          ),
          SlideInLeft(
            delay: Duration(milliseconds: start + delay),
            child: const FeatureBox(
              color: AppColors.secondSuggestionBoxColor,
              headerText: 'Dall-E',
              descriptionText:
                  'Get inspired and stay creative with your personal assistant powered by Dall-E',
            ),
          ),
          SlideInLeft(
            delay: Duration(milliseconds: start + 2 * delay),
            child: const FeatureBox(
              color: AppColors.thirdSuggestionBoxColor,
              headerText: 'Smart Voice Assistant',
              descriptionText:
                  'Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT',
            ),
          ),
        ],
      ),
    );
  }
}
