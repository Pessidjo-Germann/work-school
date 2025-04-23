import 'package:flutter/material.dart';

class DetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: const Text(
        'Watch Details',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.grey[200], // Match home app bar style
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Icon(Icons.shopping_bag_outlined, color: Colors.black, size: 20),
          ),
          onPressed: () {
            // Shopping bag action
          },
        ),
        const SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
