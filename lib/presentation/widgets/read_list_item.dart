import 'package:bookies_read_book_app/shared/theme.dart';
import 'package:flutter/material.dart';

class ReadListItem extends StatelessWidget {
  final String title;
  final String number;
  final Color color;
  const ReadListItem({
    super.key,
    required this.title,
    required this.color,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: whiteGreyColor,
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.only(right: 18),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
              border: Border.all(color: whiteColor, width: 2),
            ),
            child: Center(
              child: Text(
                number,
                style: purpleTextStyle.copyWith(
                  fontSize: 20,
                  fontFamily: mediumText,
                ),
              ),
            ),
          ),
          Expanded(
            child: Text(
              title,
              style: purpleTextStyle.copyWith(
                fontSize: 16,
                fontFamily: mediumText,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
