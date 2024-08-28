class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
  });
}

// List of products
List<Product> products = [
  Product(
    id: 1,
    price: 59,
    title: "AirPods",
    subTitle: "High quality",
    image: "assets/images/airpod.png",
    description: "High-quality sound for your ears.",
  ),
  Product(
    id: 2,
    price: 188,
    title: "Mobile",
    subTitle: "Google",
    image: "assets/images/mobile.png",
    description: '''
- Screen: 6.3 inch
- Ram: 4GB
''',
  ),
  Product(
    id: 3,
    price: 84,
    title: "VR",
    subTitle: "Virtual Reality",
    image: "assets/images/class.png",
    description: "Make thing real.",
  ),
  Product(
    id: 4,
    price: 25,
    title: "HeadSet",
    subTitle: "High quality sound and mic",
    image: "assets/images/headset.png",
    description: "High-quality sound for your ears.",
  ),
  Product(
    id: 5,
    price: 120,
    title: "Camera",
    subTitle: "Canon",
    image: "assets/images/camera.png",
    description: "High-quality Picture.",
  ),
  Product(
    id: 6,
    price: 36,
    title: "Speaker",
    subTitle: "Small speaker",
    image: "assets/images/speaker.png",
    description: "Fun party.",
  ),
];
