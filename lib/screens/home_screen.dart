import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_marketplace/gen/assets.gen.dart';
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
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25))),
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                                    color:
                                                        const Color(0xff262A2F)),
                                          ),
                                          Text(
                                            'Items',
                                            style: MyTextStyle
                                                .homeHeaderItemDescription
                                                .copyWith(
                                                    color:
                                                        const Color(0x80262A2F)),
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
      ],
    ));
  }
}
