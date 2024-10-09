import 'package:expenz_flutter/utils/colors.dart';
import 'package:flutter/material.dart';

class SharedPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  const SharedPage({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl,
          width: 300,
          fit: BoxFit.cover,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: kGrey,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
