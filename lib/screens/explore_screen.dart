import 'package:flutter/material.dart';
import 'package:nft_marketplace/dummy_data.dart';
import 'package:nft_marketplace/gen/assets.gen.dart';
import 'package:nft_marketplace/models/nft_model.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Transform.rotate(
        angle: -0.08,
        child: OverflowBox(
          maxWidth: size.width*1.5,
          child: Column(children: [
            ListWidget(
              items: DummyDate.exploreFirstList,
            ),
            ListWidget(
              items: DummyDate.exploreSecondList,
            ),
            ListWidget(
              items: DummyDate.exploreItemThirdList,
            ),
            ListWidget(
              items: DummyDate.exploreItemFourthList,
            )
          ]),
        ),
      ),
    );
  }
}

class ListWidget extends StatelessWidget {
  final List<NftModel> items;
  const ListWidget({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final item = items[index];
            return Padding(
              padding: const EdgeInsets.all(6),
              child: Container(
                width: 136.23,
                height: 154,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: Image.asset(item.imageUrl).image)),
              ),
            );
          }),
    );
  }
}
