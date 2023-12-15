import 'package:bookies_read_book_app/shared/theme.dart';
import 'package:flutter/material.dart';

class HomePopularItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  const HomePopularItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/detail'),
      child: Container(
        height: 162,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: whiteGreyColor,
        ),
        child: Row(
          children: [
            Container(
              height: 130,
              width: 100,
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: whiteColor,
              ),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(
                    imageUrl,
                    height: 122,
                    width: 92,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: purpleTextStyle.copyWith(
                      fontSize: 16,
                      fontFamily: mediumText,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    subtitle,
                    style: greyTextStyle,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icon_heart.png',
                          width: 16,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
