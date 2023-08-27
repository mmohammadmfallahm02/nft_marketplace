import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_marketplace/dummy_data.dart';
import 'package:nft_marketplace/gen/assets.gen.dart';
import 'package:nft_marketplace/models/nft_model.dart';
import 'package:nft_marketplace/theme/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          expandedHeight: 300,
          stretch: true,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: const [
              StretchMode.fadeTitle,
              StretchMode.blurBackground,
              StretchMode.zoomBackground
            ],
            background: Stack(fit: StackFit.expand, children: [
              Image.asset(
                Assets.images.homeHeaderImage.path,
                fit: BoxFit.cover,
              ),
              Positioned(
                  right: 16,
                  bottom: 26,
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hypebeast',
                          style: MyTextStyle.homeTitle,
                        ),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: 'By ',
                                  style: MyTextStyle.homeMadeBy,
                                  children: [
                                    TextSpan(
                                        text: 'Matt Sypien',
                                        style: MyTextStyle.homeMadeBy.copyWith(
                                            fontWeight: FontWeight.bold)),
                                  ]),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            SvgPicture.asset(Assets.icons.tickIcon)
                          ],
                        ),
                        SizedBox(
                          height: 203,
                          width: 220,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 97,
                                  height: 132,
                                  decoration: const BoxDecoration(
                                      color: Color(0xffF4B7A8),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25))),
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: 34,
                                          height: 34,
                                          decoration: const BoxDecoration(
                                              color: Colors.white30,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(7.81))),
                                          child: Image.asset(
                                              Assets.icons.ethereumIcon.path)),
                                      const Text(
                                        '0.53',
                                        style: MyTextStyle.homeHeaderItem,
                                      ),
                                      const Text('Floor Price',
                                          style: MyTextStyle
                                              .homeHeaderItemDescription)
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 97,
                                      height: 86,
                                      decoration: const BoxDecoration(
                                          color: Colors.white30,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25))),
                                      padding: const EdgeInsets.all(16),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '5.6k',
                                            style: MyTextStyle.homeHeaderItem,
                                          ),
                                          Text('Owners',
                                              style: MyTextStyle
                                                  .homeHeaderItemDescription)
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 97,
                                      height: 86,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25))),
                                      padding: const EdgeInsets.all(16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '9.9k',
                                            style: MyTextStyle.homeHeaderItem
                                                .copyWith(
                                                    color: const Color(
                                                        0xff262A2F)),
                                          ),
                                          Text(
                                            'Items',
                                            style: MyTextStyle
                                                .homeHeaderItemDescription
                                                .copyWith(
                                                    color: const Color(
                                                        0x80262A2F)),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ]),
                        )
                      ],
                    ),
                  ))
            ]),
          ),
        ),
        SliverToBoxAdapter(
            child: Directionality(
          textDirection: TextDirection.rtl,
          child: MasonryGridView.count(
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              itemCount: DummyDate.collocationModels.length + 1,
              padding: const EdgeInsets.fromLTRB(16, 25, 16, 20),
              shrinkWrap: true,
              mainAxisSpacing: 12,
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          alignment: Alignment.center,
                          height: 66,
                          width: 170,
                          decoration: BoxDecoration(
                              color: const Color(0xff303841),
                              borderRadius: BorderRadius.circular(32)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 59,
                                height: 56,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(right: 5),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    color: Colors.white),
                                child: SvgPicture.asset(
                                  Assets.icons.filterIcon,
                                  width: 25,
                                  height: 23,
                                ),
                              ),
                              const Text('Filter',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  )),
                              const SizedBox()
                            ],
                          ),
                        ));

                  default:
                    final model = DummyDate.collocationModels[index - 1];

                    return Align(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                            height: 195,
                            width: 175,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: Image.asset(model.imageUrl).image,
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(32)),
                            child: ModelDetailWidget(model: model)),
                      ),
                    );
                }
              }),
        ))
      ],
    ));
  }
}

class ModelDetailWidget extends StatefulWidget {
  const ModelDetailWidget({
    super.key,
    required this.model,
  });

  final NftModel model;

  @override
  State<ModelDetailWidget> createState() => _ModelDetailWidgetState();
}

class _ModelDetailWidgetState extends State<ModelDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 90,
        margin: const EdgeInsets.all(9),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(32))),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.model.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 41,
                    width: 110,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(21))),
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'price',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            widget.model.price,
                            style: const TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 14,
                            height: 14,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                color: Colors.white30, shape: BoxShape.circle),
                            child: Image.asset(
                              Assets.icons.ethereumIcon.path,
                              width: 12,
                              height: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 41,
                    height: 41,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      Assets.icons.placebidIcon,
                      width: 20,
                      height: 25,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
