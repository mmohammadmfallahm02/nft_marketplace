import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_marketplace/gen/assets.gen.dart';
import 'package:nft_marketplace/gen/fonts.gen.dart';
import 'package:nft_marketplace/models/nft_model.dart';
import 'package:nft_marketplace/screens/home_screen.dart';
import 'package:nft_marketplace/screens/purchase_screen.dart';
import 'package:nft_marketplace/theme/style.dart';
import 'package:slide_action/slide_action.dart';

class SingleModelScreen extends StatelessWidget {
  final NftModel model;
  const SingleModelScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            Assets.images.singleModel.path,
            fit: BoxFit.cover,
          )),
          Positioned(
              top: 40,
              right: 20,
              left: 20,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          width: 77,
                          height: 108,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: SvgPicture.asset(Assets.icons.backIcon),
                        ),
                      ),
                      Container(
                        width: 77,
                        height: 108,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  Assets.images.imageAvatar.path,
                                  fit: BoxFit.cover,
                                ).image),
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50))),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      model.name,
                      textAlign: TextAlign.right,
                      style: MyTextStyle.homeTitle,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 70,
                      height: 310,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 64,
                              height: 90,
                              decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(19)),
                              child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '03',
                                      style: TextStyle(
                                          fontFamily:
                                              FontFamily.plusJakartaSans,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      'days',
                                      style: TextStyle(
                                          fontFamily:
                                              FontFamily.plusJakartaSans,
                                          color: Colors.white,
                                          fontSize: 12),
                                    )
                                  ]),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 4,
                                  height: 4,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  width: 4,
                                  height: 4,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Container(
                              width: 64,
                              height: 90,
                              decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(19)),
                              child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '04',
                                      style: TextStyle(
                                          fontFamily:
                                              FontFamily.plusJakartaSans,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      'hours',
                                      style: TextStyle(
                                          fontFamily:
                                              FontFamily.plusJakartaSans,
                                          color: Colors.white,
                                          fontSize: 12),
                                    )
                                  ]),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 4,
                                  height: 4,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  width: 4,
                                  height: 4,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Container(
                              width: 64,
                              height: 90,
                              decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(19)),
                              child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '30',
                                      style: TextStyle(
                                          fontFamily:
                                              FontFamily.plusJakartaSans,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      'min',
                                      style: TextStyle(
                                          fontFamily:
                                              FontFamily.plusJakartaSans,
                                          color: Colors.white,
                                          fontSize: 12),
                                    )
                                  ]),
                            )
                          ]),
                    ),
                  )
                ],
              )),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GradientBorder(
                        gradient: const LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [
                              Colors.white,
                              Color(0xffF4B7A8),
                            ]),
                        strokeWidth: 1,
                        radius: 42,
                        child: Container(
                          width: 194,
                          height: 220,
                          decoration: const BoxDecoration(
                              color: Color(0xffF4B7A8),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(42))),
                          padding: const EdgeInsets.all(25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 67,
                                  height: 67,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white30,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))),
                                  child: Image.asset(
                                    Assets.icons.ethereumIcon.path,
                                    width: 42,
                                    height: 42,
                                    fit: BoxFit.contain,
                                  )),
                              const Text(
                                '18.6',
                                style: TextStyle(
                                    fontSize: 54,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text('Highest Bid',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white))
                            ],
                          ),
                        ),
                      ),
                      GradientBorder(
                        gradient: const LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [
                              Colors.white,
                              Color(0xffF4B7A8),
                            ]),
                        strokeWidth: 1,
                        radius: 36,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(36)),
                          child: Container(
                            width: 171,
                            height: 150,
                            decoration: const BoxDecoration(
                                color: Colors.white30,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(36))),
                            padding: const EdgeInsets.all(18),
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Owner',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0x804D4F51))),
                                  Image.asset(Assets.images.ownerPicture.path),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text('Adam Nash',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17)),
                                      Image.asset(
                                          Assets.icons.tickIconOutline.path)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
                    child: SlideAction(
                      trackHeight: 75,
                      thumbWidth: 84,
                      action: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const PurchaseScreen()));
                      },
                      thumbBuilder: (BuildContext context,
                          SlideActionStateMixin currentState) {
                        return Container(
                          margin: const EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Center(
                              child:
                                  SvgPicture.asset(Assets.icons.placebidIcon)),
                        );
                      },
                      stretchThumb: false,
                      trackBuilder: (context, state) {
                        return Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff262A2F),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Opacity(
                            opacity: lerpDouble(
                                1,
                                0,
                                (state.thumbFractionalPosition * 2)
                                    .clamp(0.0, 1.0))!,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Place Bid",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
