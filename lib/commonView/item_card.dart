import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stream_rate/commonView/item_card_model.dart';
import 'package:stream_rate/commonView/load_image_with_placeholder.dart';
import 'package:stream_rate/constant/image_assets.dart';
import 'package:stream_rate/utils/utils.dart';

class ItemCard extends StatelessWidget {
  final ItemCardModel item;
  const ItemCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: colorItemCard),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            child: LoadImageSimple(
              image: item.image,
              width: 95,
              height: 130,
              imageFit: BoxFit.contain,
              defaultAssetImage: AppImageAsset.resultnoimg,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('${item.itemName}  ',
                          style:
                              const TextStyle(color: colorWhite, fontSize: 22)),
                      Text('(${item.year})',
                          style: const TextStyle(
                              color: colorMainLightGray, fontSize: 14)),
                      const Spacer(),
                      SvgPicture.asset('assets/svgs/like.svg'),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svgs/metacritic_icon.svg',
                          ),
                          const SizedBox(width: 15),
                          Text(
                            '${item.imdb}',
                            style: const TextStyle(
                                color: colorWhite, fontSize: 16),
                          ),
                          const Text(
                            '  / 10',
                            style: TextStyle(
                                color: colorMainLightGray, fontSize: 12),
                          ),
                        ],
                      )),
                      Expanded(
                          child: Row(
                        children: [
                          SvgPicture.asset('assets/svgs/metacritic_icon.svg'),
                          const SizedBox(width: 15),
                          Text(
                            '${item.metacritic}',
                            style: const TextStyle(
                                color: colorWhite, fontSize: 16),
                          ),
                          const Text(
                            '  / 10',
                            style: TextStyle(
                                color: colorMainLightGray, fontSize: 12),
                          ),
                        ],
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          SvgPicture.asset(
                              'assets/svgs/rotten_tomatoes_icon.svg'),
                          const SizedBox(width: 15),
                          Text(
                            '${item.rottenTomatoes} %',
                            style: const TextStyle(
                                color: colorWhite, fontSize: 16),
                          ),
                        ],
                      )),
                      Expanded(
                          child: Row(
                        children: [
                          SvgPicture.asset(
                              'assets/svgs/rotten_tomatoes_icon.svg'),
                          const SizedBox(width: 15),
                          Text(
                            '${item.letterboxd}',
                            style: const TextStyle(
                                color: colorWhite, fontSize: 16),
                          ),
                          const Text(
                            '  / 10',
                            style: TextStyle(
                                color: colorMainLightGray, fontSize: 12),
                          ),
                        ],
                      ))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
