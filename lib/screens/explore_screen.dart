import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nft_marketplace/dummy_data.dart';
import 'package:nft_marketplace/models/nft_model.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ShaderMask(
              blendMode: BlendMode.dstOut,
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.white.withOpacity(0.3),
                      Colors.white.withOpacity(0.97),
                      Colors.white,
                      Colors.white
                    ],
                    stops: const [
                      0,
                      0.15,
                      0.40,
                      0.50,
                      0.60,
                      0.69,
                      0.73,
                      1
                    ]).createShader(bounds);
              },
              child: Transform.rotate(
                angle: -0.08,
                child: OverflowBox(
                  maxWidth: size.width * 1.5,
                  child: Column(children: [
                    ListWidget(
                      items: DummyDate.exploreFirstList,
                      duration: 100,
                    ),
                    ListWidget(
                      items: DummyDate.exploreSecondList,
                      duration: 110,
                    ),
                    ListWidget(
                      items: DummyDate.exploreItemThirdList,
                      duration: 130,
                    ),
                    ListWidget(
                      items: DummyDate.exploreItemFourthList,
                      duration: 100,
                    )
                  ]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListWidget extends StatefulWidget {
  final List<NftModel> items;
  final int duration;
  const ListWidget({
    super.key,
    required this.items,
    this.duration = 100,
  });

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        _autoScroll();
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScroll();
    });
  }

  _autoScroll() {
    final currentScrollPosition = _scrollController.offset;
    final scrollEndPosition = _scrollController.position.maxScrollExtent;
    scheduleMicrotask(() {
      _scrollController.animateTo(
          currentScrollPosition == scrollEndPosition ? 0 : scrollEndPosition,
          duration: Duration(seconds: widget.duration),
          curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          reverse: true,
          controller: _scrollController,
          itemCount: 50,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            int imageIndex = index % widget.items.length;
            final item = widget.items[imageIndex];
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

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
