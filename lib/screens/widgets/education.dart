import 'package:flutter/material.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget(
      {super.key,
      required this.degreeName,
      required this.institute,
      required this.result,
      required this.alignment});

  final String degreeName;
  final String institute;
  final String result;
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: alignment,
        children: [
          Text(
            degreeName,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(institute),
          Text(result),
        ],
      ),
    );
  }
}
