import 'package:bookies_read_book_app/presentation/widgets/read_list_item.dart';
import 'package:bookies_read_book_app/shared/theme.dart';
import 'package:flutter/material.dart';

class ReadPage extends StatelessWidget {
  const ReadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: whiteColor,
        leadingWidth: 60,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            height: 35,
            width: 35,
            margin: const EdgeInsets.only(left: 24),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: whiteColor,
              border: Border.all(
                color: const Color(0xFFE9E8ED),
              ),
            ),
            child: Center(
              child: Image.asset(
                'assets/icon_arrow_left.png',
                width: 16,
              ),
            ),
          ),
        ),
        actions: [
          Container(
            height: 35,
            width: 35,
            margin: const EdgeInsets.only(right: 24),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: whiteColor,
              border: Border.all(
                color: const Color(0xFFE9E8ED),
              ),
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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          // NOTE : TITLE
          const SizedBox(
            height: 18,
          ),
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
          Column(
            children: [
              const ReadListItem(
                title: 'The Entrepreneurial Myth Now',
                number: '1',
                color: Color(0xFFD7F2FF),
              ),
              ReadListItem(
                title: 'Do Interview Trip: Matter or Not',
                number: '2',
                color: purpleCardColor,
              ),
              ReadListItem(
                title: 'Hack The Tools Also Powered Storm',
                number: '3',
                color: redBrownColor,
              ),
              const ReadListItem(
                title: 'Raport Says Never Into Dark, Well Look How',
                number: '4',
                color: Color(0xFFFFE9CB),
              ),
              const ReadListItem(
                title: 'The End of Miserable & Welcoming Digital',
                number: '5',
                color: Color(0xFFFFD9FB),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
