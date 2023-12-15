import 'package:bookies_read_book_app/presentation/widgets/detail_keypoint_item.dart';
import 'package:bookies_read_book_app/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundColorCardSection(),
            contentSection(context),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: 36,
            width: 218,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(65),
              boxShadow: [
                BoxShadow(
                  color: primaryColor.withOpacity(0.5),
                  blurRadius: 40,
                  offset: const Offset(0, 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/read');
              },
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(65),
                ),
              ),
              child: Text(
                'Read Now',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontFamily: mediumText,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget contentSection(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE : NAVIGATION TOP
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: whiteColor,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icon_arrow_left.png',
                        width: 16,
                      ),
                    ),
                  ),
                ),
                Container(
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
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            // NOTE: IMAGE DETAIL
            Center(
              child: Container(
                height: 195,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: whiteColor,
                ),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/img_detail.png',
                      width: 138,
                      height: 183,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // NOTE : TITLE
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'The Power of Hooked',
                    style: purpleTextStyle.copyWith(
                      fontSize: 22,
                      fontFamily: mediumText,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Growth Business',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '•••',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      letterSpacing: 9,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'by Nir Eyal',
                    style: purpleTextStyle.copyWith(
                      fontSize: 16,
                      fontFamily: mediumText,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),

            // NOTE : SINOPSIS
            Text(
              'Sinopsis',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Why do some products capture wide spread attention while others what makes us engage with people. ',
              style: purpleTextStyle.copyWith(
                fontSize: 16,
                height: 2,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // NOTE : KEYPOINTS
            Text(
              'Keypoints',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Column(
              children: [
                DetailKeypointItem(
                  title: 'Medium chart of team pro',
                ),
                DetailKeypointItem(
                  title: 'Perdalam notifications',
                ),
                DetailKeypointItem(
                  title: 'Membuat funnel marketing',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget backgroundColorCardSection() {
    return Container(
      height: 240,
      width: double.infinity,
      color: whiteGreyColor,
    );
  }
}
