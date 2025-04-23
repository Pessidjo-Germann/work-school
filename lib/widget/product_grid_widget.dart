import 'package:flutter/material.dart';
import 'package:work_school/screen/watch_details_page.dart';
import 'product_card_widget.dart';

class ProductGridWidget extends StatelessWidget {
  const ProductGridWidget({super.key});

  // Placeholder data - replace with actual data source
  final List<Map<String, String>> products = const [
    {
      'imagePath': 'asset/wristwatch.png', // Placeholder
      'title': 'Round black Tissot',
      'subtitle': 'Automatic watch',
      'price': '\$900',
    },
    {
      'imagePath': 'asset/wristwatch.png', // Placeholder
      'title': 'Casio Edifice G-Shock',
      'subtitle': 'Waterproof watches',
      'price': '\$700',
    },
    {
      'imagePath': 'asset/wristwatch.png', // Placeholder
      'title': 'Luxury Gold Watch',
      'subtitle': 'Limited Edition',
      'price': '\$1200',
    },
    {
      'imagePath': 'asset/wristwatch.png', // Placeholder
      'title': 'Sporty Digital Watch',
      'subtitle': 'Multi-function',
      'price': '\$350',
    },
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 0.48,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WatchDetailsPage(),
              ),
            );
          },
          child: ProductCardWidget(
            imagePath: product['imagePath']!,
            title: product['title']!,
            subtitle: product['subtitle']!,
            price: product['price']!,
          ),
        );
      },
    );
  }
}
