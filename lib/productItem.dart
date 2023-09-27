class Product {
  final int id;
  final int color;
  final String image;
  final String name;
  final String price;
  final String description;

  const Product(this.id, this.color, this.image, this.name, this.price, this.description);
}

class productData {
  List products = [
    Product(
        1,
        0xffe7dabc,
        'https://cdn.accentuate.io/31823165882414/11366956630062/StoJo_200206_Product-68537-v1584394430461.png?936x1160',
        'Stojo Bottle',
        "25",
        'Chaldal.com is an online shop available in Dhaka, Chattogram and Jashore. We believe time is valuable to our fellow residents, and that they should not have to waste hours in traffic, brave bad weather and wait in line just to buy basic necessities like eggs! This is why Chaldal delivers everything you need right at your door-step and at no additional cost.'
    ),
    Product(
        2,
        0xffcabbce,
        'https://cdn.accentuate.io/32587422892078/11366956630062/StoJo_200602_Product-76848-v1597674299708.png?936x1160',
        'Stojo Cup',
        '20',
        'Chaldal.com is an online shop available in Dhaka, Chattogram and Jashore. We believe time is valuable to our fellow residents, and that they should not have to waste hours in traffic, brave bad weather and wait in line just to buy basic necessities like eggs! This is why Chaldal delivers everything you need right at your door-step and at no additional cost.'
    ),
    Product(
      3,
      0xffb8c6d0,
      'https://cdn.accentuate.io/32638166302766/11366956630062/12oz-Sky-936x1160-v1600350957765.png?936x1160',
      'Stojo Bundle',
      '15',
      'Chaldal.com is an online shop available in Dhaka, Chattogram and Jashore. We believe time is valuable to our fellow residents, and that they should not have to waste hours in traffic, brave bad weather and wait in line just to buy basic necessities like eggs! This is why Chaldal delivers everything you need right at your door-step and at no additional cost.'
    ),
    Product(
      4,
      0xffdbbec1,
      'https://cdn.accentuate.io/31244619612206/11366956630062/24_coral_1-v1574584667909.png?936x1160',
      'Stojo Cup',
      '20',
      'Chaldal.com is an online shop available in Dhaka, Chattogram and Jashore. We believe time is valuable to our fellow residents, and that they should not have to waste hours in traffic, brave bad weather and wait in line just to buy basic necessities like eggs! This is why Chaldal delivers everything you need right at your door-step and at no additional cost.'
    )
  ];
}
