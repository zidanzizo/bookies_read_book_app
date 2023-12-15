import 'package:bookies_read_book_app/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailKeypointItem extends StatelessWidget {
  final String title;
  const DetailKeypointItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          Container(
            height: 16,
            width: 16,
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFFD17982),
                width: 1,
              ),
            ),
            child: Center(
              child: Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFD17982),
                ),
              ),
            ),
          ),
          Text(
            title,
            style: purpleTextStyle.copyWith(
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
