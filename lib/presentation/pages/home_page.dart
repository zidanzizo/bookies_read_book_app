import 'package:bookies_read_book_app/presentation/widgets/home_card_topic_item.dart';
import 'package:bookies_read_book_app/presentation/widgets/home_popular_item.dart';
import 'package:bookies_read_book_app/shared/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          topicsSection(),
          Container(
            margin: const EdgeInsets.only(bottom: 50, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Most Popular',
                  style: purpleTextStyle.copyWith(
                    fontSize: 18,
                    fontFamily: mediumText,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Column(
                  children: [
                    HomePopularItem(
                      imageUrl: 'assets/img_popular1.png',
                      title: 'Lamp of Brightnes Real World',
                      subtitle: 'Growth Business',
                    ),
                    HomePopularItem(
                      imageUrl: 'assets/img_popular2.png',
                      title: 'Art of Gathering Do Meeting',
                      subtitle: 'Team Product',
                    ),
                    HomePopularItem(
                      imageUrl: 'assets/img_popular3.png',
                      title: 'Tiger In The Garden For Eating',
                      subtitle: 'Children Story',
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }

  Widget topicsSection() {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 12),
            child: Text(
              'Topics',
              style: purpleTextStyle.copyWith(
                fontSize: 18,
                fontFamily: mediumText,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 24,
                ),
                HomeCardTopicItem(
                  iconUrl: 'assets/icon_award.png',
                  title: 'My Self Improvement',
                  totalBook: 84,
                  lightCardColor: lighBlueCardColor,
                  cardColor: blueCardColor,
                  cardSubTextStyle: blueCardTextStyle,
                ),
                HomeCardTopicItem(
                  iconUrl: 'assets/icon_trending_up.png',
                  title: 'Business Education',
                  totalBook: 12,
                  lightCardColor: lightPurpleColor,
                  cardColor: purpleCardColor,
                  cardSubTextStyle: purpleCardTextStyle,
                ),
                HomeCardTopicItem(
                  iconUrl: 'assets/icon_star.png',
                  title: 'Non-Fiction Stories',
                  totalBook: 5,
                  lightCardColor: lightRedBrownColor,
                  cardColor: redBrownColor,
                  cardSubTextStyle: redBrownCardTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
