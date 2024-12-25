import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream_rate/commonView/custom_fill_button.dart';
import 'package:stream_rate/commonView/item_card.dart';
import 'package:stream_rate/commonView/item_card_model.dart';
import 'package:stream_rate/utils/utils.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  HistoryState createState() => HistoryState();
}

class HistoryState extends State<History> {
  List<ItemCardModel> items = [
    ItemCardModel(
        image: 'assets/images/item_card1.png',
        itemName: 'Jaws',
        year: 1978,
        imdb: 8.1,
        metacritic: 7.3,
        rottenTomatoes: 97,
        letterboxd: 3.6),
    ItemCardModel(
        image: 'assets/images/item_card2.png',
        itemName: 'Star Wars',
        year: 1977,
        imdb: 8.7,
        metacritic: 6.9,
        rottenTomatoes: 94,
        letterboxd: 4.4),
    ItemCardModel(
        image: 'assets/images/item_card3.png',
        itemName: 'Toy Story 2',
        year: 1999,
        imdb: 7.9,
        metacritic: 8.5,
        rottenTomatoes: 98,
        letterboxd: 4.5),
    ItemCardModel(
        image: 'assets/images/item_card4.png',
        itemName: 'Casablanca',
        year: 1942,
        imdb: 7.7,
        metacritic: 7.9,
        rottenTomatoes: 88,
        letterboxd: 4.0),
    ItemCardModel(
        image: 'assets/images/item_card5.png',
        itemName: 'Parasite',
        year: 2019,
        imdb: 9.7,
        metacritic: 6.6,
        rottenTomatoes: 86,
        letterboxd: 3.2),
    ItemCardModel(
        image: 'assets/images/item_card5.png',
        itemName: 'Parasite',
        year: 2019,
        imdb: 9.7,
        metacritic: 6.6,
        rottenTomatoes: 86,
        letterboxd: 3.2),
    ItemCardModel(
        image: 'assets/images/item_card5.png',
        itemName: 'Parasite',
        year: 2019,
        imdb: 9.7,
        metacritic: 6.6,
        rottenTomatoes: 86,
        letterboxd: 3.2),
    ItemCardModel(
        image: 'assets/images/item_card5.png',
        itemName: 'Parasite',
        year: 2019,
        imdb: 9.7,
        metacritic: 6.6,
        rottenTomatoes: 86,
        letterboxd: 3.2),
    ItemCardModel(
        image: 'assets/images/item_card5.png',
        itemName: 'Parasite',
        year: 2019,
        imdb: 9.7,
        metacritic: 6.6,
        rottenTomatoes: 86,
        letterboxd: 3.2),
    ItemCardModel(
        image: 'assets/images/item_card5.png',
        itemName: 'Parasite',
        year: 2019,
        imdb: 9.7,
        metacritic: 6.6,
        rottenTomatoes: 86,
        letterboxd: 3.2),
    ItemCardModel(
        image: 'assets/images/item_card5.png',
        itemName: 'Parasite',
        year: 2019,
        imdb: 9.7,
        metacritic: 6.6,
        rottenTomatoes: 86,
        letterboxd: 3.2),
    ItemCardModel(
        image: 'assets/images/item_card5.png',
        itemName: 'Parasite',
        year: 2019,
        imdb: 9.7,
        metacritic: 6.6,
        rottenTomatoes: 86,
        letterboxd: 3.2),
    ItemCardModel(
        image: 'assets/images/item_card5.png',
        itemName: 'Parasite',
        year: 2019,
        imdb: 9.7,
        metacritic: 6.6,
        rottenTomatoes: 86,
        letterboxd: 3.2),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        automaticallyImplyLeading: false,
        foregroundColor: colorBlack,
        toolbarHeight: deviceHeight * 0.1,
        elevation: 0,
        title: Stack(
          children: [
            SizedBox(
              height: deviceHeight * 0.06,
              child: Center(
                child: Text(
                  'History',
                  style: GoogleFonts.poppins(
                      fontSize: deviceHeight * .024, color: colorWhite),
                ),
              ),
            ),
            Positioned(
              left: deviceWidth * 0.04,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: deviceHeight * 0.04,
                  width: deviceHeight * 0.04,
                  padding:
                      EdgeInsets.symmetric(horizontal: deviceHeight * 0.015),
                  decoration: BoxDecoration(
                    color: colorMainGray.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(deviceHeight * 0.012),
                  ),
                  child: Center(
                    child: Icon(Icons.arrow_back_ios,
                        size: deviceHeight * 0.018, color: colorWhite),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: colorMainBackground,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(deviceWidth * 0.04,
                deviceHeight * 0.02, deviceWidth * 0.04, deviceHeight * 0.12),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ItemCard(item: items[index]);
              },
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(deviceWidth * 0.04),
              height: deviceHeight * 0.11,
              width: deviceWidth,
              decoration: const BoxDecoration(color: colorItemCard),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('You have only 3 credits left',
                          style: GoogleFonts.poppins(
                              color: colorWhite,
                              fontSize: deviceHeight * 0.014)),
                      Row(
                        children: [
                          Text('Go Unlimited for ',
                              style: GoogleFonts.poppins(
                                  color: colorWhite,
                                  fontSize: deviceHeight * 0.014)),
                          Text('\$2.99',
                              style: GoogleFonts.poppins(
                                  color: colorDestination,
                                  fontSize: deviceHeight * 0.016)),
                          Text('/week',
                              style: GoogleFonts.poppins(
                                  color: colorWhite,
                                  fontSize: deviceHeight * 0.014)),
                        ],
                      ),
                    ],
                  ),
                  CustomFillButton(
                    onPressed: () => openSubscriptionPage(context),
                    child: Row(children: [
                      Text('SUBSCRIBE',
                          style: GoogleFonts.poppins(
                              fontSize: deviceHeight * 0.016,
                              color: colorWhite,
                              fontWeight: FontWeight.bold)),
                      const Icon(Icons.arrow_forward_ios,
                          size: 15, color: colorWhite)
                    ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
