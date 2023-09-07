import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nft_marketplace/gen/assets.gen.dart';
import 'package:slide_action/slide_action.dart';

class PurchaseScreen extends StatelessWidget {
  const PurchaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color(0xffE0C2CA),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Column(children: [
                SizedBox(
                  height: 480,
                  width: size.width,
                  child: Image.asset(
                    Assets.images.purchasePicture.path,
                    fit: BoxFit.fill,
                  ),
                ),
              ])),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              child: Container(
                height: 490,
                width: size.width,
                decoration: const BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 372,
                        height: 164,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(36))),
                      ),
                      Container(
                        width: 372,
                        height: 194,
                        decoration: const BoxDecoration(
                            color: Colors.white54,
                            borderRadius:
                                BorderRadius.all(Radius.circular(36))),
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
                                  child: SvgPicture.asset(
                                      Assets.icons.placebidIcon)),
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
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Positioned(
//               right: 0,
//               left: 0,
//               bottom: 0,
//               child: SizedBox(
//                   height: 300, // Set the desired height of your bottom sheet
//                   child: ClipPath(
//                     clipper: NotchedContainerClipper(
//                         notchWidth: 100.0), // Adjust the width as needed
//                     child: Container(
//                       color:
//                           Colors.white, // Background color of the bottom sheet
//                       child: const Center(
//                         child: Text(
//                           'Your Bottom Sheet Content',
//                           style: TextStyle(fontSize: 20),
//                         ),
//                       ),
//                     ),
//                   )))

// class NotchedContainerClipper extends CustomClipper<Path> {
//   final double notchWidth;

//   NotchedContainerClipper({
//     required this.notchWidth,
//   });

//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.lineTo(0, 0);

//     // Create a rounded notch
//     path.lineTo(notchWidth / 2, 0);
//     path.arcToPoint(
//       Offset(notchWidth, size.height * 0.1),
//       radius: Radius.circular(notchWidth / 2),
//       clockwise: false,
//     );

//     path.lineTo(size.width - notchWidth, size.height * 0.1);

//     // Create a rounded notch on the right side
//     path.arcToPoint(
//       Offset(size.width - notchWidth / 2, 0),
//       radius: Radius.circular(notchWidth / 2),
//       clockwise: false,
//     );

//     path.lineTo(size.width, 0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldDelegate) {
//     return this != oldDelegate;
//   }
// }