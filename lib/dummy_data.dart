import 'package:nft_marketplace/gen/assets.gen.dart';
import 'package:nft_marketplace/models/nft_model.dart';

class DummyDate {
  static List<NftModel> exploreFirstList = [
    NftModel(imageUrl: Assets.images.nft11.path),
    NftModel(imageUrl: Assets.images.nft12.path),
    NftModel(imageUrl: Assets.images.nft13.path),
    NftModel(imageUrl: Assets.images.nft14.path),
  ];
  static List<NftModel> exploreSecondList = [
    NftModel(imageUrl: Assets.images.nft21.path),
    NftModel(imageUrl: Assets.images.nft22.path),
    NftModel(imageUrl: Assets.images.nft23.path),
    NftModel(imageUrl: Assets.images.nft24.path),
  ];
  static List<NftModel> exploreItemThirdList = [
    NftModel(imageUrl: Assets.images.nft31.path),
    NftModel(imageUrl: Assets.images.nft32.path),
    NftModel(imageUrl: Assets.images.nft33.path),
    NftModel(imageUrl: Assets.images.nft34.path),
    NftModel(imageUrl: Assets.images.nft35.path),
  ];
  static List<NftModel> exploreItemFourthList = [
    NftModel(imageUrl: Assets.images.nft41.path),
    NftModel(imageUrl: Assets.images.nft42.path),
    NftModel(imageUrl: Assets.images.nft43.path),
    NftModel(imageUrl: Assets.images.nft44.path),
  ];
  static List<NftModel> collocationModels = [
    NftModel(
        imageUrl: Assets.images.homeItem1.path,
        name: 'Hypebeast\n#2122',
        price: '0.5 ETH'),
    NftModel(
        imageUrl: Assets.images.homeItem2.path,
        name: 'Hypebeast\n#2123',
        price: '0.6 ETH'),
    NftModel(
        imageUrl: Assets.images.homeItem3.path,
        name: 'Hypebeast\n#2124',
        price: '0.4 ETH'),
    NftModel(
        imageUrl: Assets.images.homeItem4.path,
        name: 'Hypebeast\n#2125',
        price: '0.5 ETH'),
    NftModel(
        imageUrl: Assets.images.homeItem5.path,
        name: 'Hypebeast\n#2124',
        price: '0.4 ETH'),
    NftModel(
        imageUrl: Assets.images.homeItem6.path,
        name: 'Hypebeast\n#2125',
        price: '0.5 ETH'),
    NftModel(
        imageUrl: Assets.images.homeItem1.path,
        name: 'Hypebeast\n#2122',
        price: '0.5 ETH'),
    NftModel(
        imageUrl: Assets.images.homeItem2.path,
        name: 'Hypebeast\n#2123',
        price: '0.6 ETH'),
  ];
}
