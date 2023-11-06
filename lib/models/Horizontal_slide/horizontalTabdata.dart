import 'package:assignment2/models/Horizontal_slide/horizontalTabProduct.dart';
import 'package:assignment2/src/ProductScreen.dart';
import 'package:get/get.dart';

class HorizontalData {
  const HorizontalData._();

  static List<HorizontalProduct> horizontalproduct = [
    HorizontalProduct(
        name: 'Abhigyna\nMakeovers',
        price: '₹2320/-',
        ontap: Get.to(() => const ProductScreen()),
        image: 'assets/image 1.png'),
    HorizontalProduct(
        name: 'Luxe Hairstyling\nand makeup',
        price: '₹1950/-',
        ontap: '',
        image: 'assets/image 2184.png')
  ];
}
