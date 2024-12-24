import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:stream_rate/commonView/item_card.dart';
import 'package:stream_rate/commonView/item_card_model.dart';

import 'package:stream_rate/utils/utils.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  FavouriteState createState() => FavouriteState();
}

class FavouriteState extends State<Favourite> {
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
        toolbarHeight: 80,
        elevation: 0,
        title: Stack(
          children: [
            SizedBox(
              height: 50,
              child: Center(
                child: Text(
                  'Favourites',
                  style: GoogleFonts.poppins(fontSize: 24, color: colorWhite),
                ),
              ),
            ),
            Positioned(
              left: 15,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: 36,
                  width: 36,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: colorWhite.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child:
                        Icon(Icons.arrow_back_ios, size: 16, color: colorWhite),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: colorMainBackground,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: SingleChildScrollView(
          child: Column(
            children: items.map((item) => ItemCard(item: item)).toList(),
          ),
        ),
      ),
    );
  }
}
