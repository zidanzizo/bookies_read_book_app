import 'package:bookies_read_book_app/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeCardTopicItem extends StatelessWidget {
  final String title;
  final String iconUrl;
  final int totalBook;
  final Color cardColor;
  final Color lightCardColor;
  final TextStyle cardSubTextStyle;
  const HomeCardTopicItem({
    super.key,
    required this.title,
    required this.iconUrl,
    required this.totalBook,
    required this.cardColor,
    required this.lightCardColor,
    required this.cardSubTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 138,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 46,
            width: 46,
            margin: const EdgeInsets.only(bottom: 35),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: lightCardColor,
            ),
            child: Center(
              child: Image.asset(
                iconUrl,
                width: 24,
              ),
            ),
          ),
          Text(
            title,
            style: purpleTextStyle.copyWith(
              fontFamily: mediumText,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            '$totalBook books',
            style: cardSubTextStyle,
          ),
        ],
      ),
    );
  }
}
