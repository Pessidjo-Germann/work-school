import 'package:flutter/material.dart';

class DetailsBottomActionBar extends StatelessWidget {
  // Placeholder data - replace with actual data
  final String price;

  const DetailsBottomActionBar({
    super.key,
    this.price = '\$900', // Default placeholder from image
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, -2), // changes position of shadow
          ),
        ],
        // Optional: Add rounded corners if needed
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(20),
        //   topRight: Radius.circular(20),
        // ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            price,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              // Buy Now action
            },
            icon: const Icon(Icons.shopping_bag_outlined, size: 20),
            label: const Text('Buy Now'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black87, // Button color
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
