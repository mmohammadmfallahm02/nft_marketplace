import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_marketplace/gen/assets.gen.dart';
import 'package:nft_marketplace/models/nft_model.dart';
import 'package:nft_marketplace/theme/style.dart';

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
                      Container(
                        width: 77,
                        height: 108,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: SvgPicture.asset(Assets.icons.backIcon),
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
                  )
                ],
              ))
        ],
      ),
    );
  }
}
