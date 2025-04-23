import 'package:flutter/material.dart';

class WatchThumbnailSelectorWidget extends StatefulWidget {
  const WatchThumbnailSelectorWidget({super.key});

  @override
  State<WatchThumbnailSelectorWidget> createState() =>
      _WatchThumbnailSelectorWidgetState();
}

class _WatchThumbnailSelectorWidgetState
    extends State<WatchThumbnailSelectorWidget> {
  // Placeholder data - replace with actual data
  final List<Map<String, dynamic>> _thumbnails = [
    {'imagePath': 'asset/wristwatch.png', 'color': Colors.orange.shade100.withOpacity(0.5)},
    {'imagePath': 'asset/wristwatch.png', 'color': Colors.grey.shade300},
    {'imagePath': 'asset/wristwatch.png', 'color': Colors.purple.shade100},
    // Add more thumbnails as needed
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80, // Adjust height as needed
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Center( // Center the ListView horizontally
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _thumbnails.length,
          shrinkWrap: true, // Important to constrain ListView within Center
          physics: const BouncingScrollPhysics(), // Optional nice scroll effect
          itemBuilder: (context, index) {
            final thumbnail = _thumbnails[index];
            final isSelected = index == _selectedIndex;

            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                  // Add logic to update the main image viewer if needed
                });
              },
              child: Container(
                width: 70, // Adjust width as needed
                margin: EdgeInsets.only(
                  left: index == 0 ? 16.0 : 8.0,
                  right: index == _thumbnails.length - 1 ? 16.0 : 0,
                ),
                decoration: BoxDecoration(
                  color: thumbnail['color'] as Color?,
                  borderRadius: BorderRadius.circular(15.0),
                  border: isSelected
                      ? Border.all(color: Colors.orangeAccent, width: 2.0)
                      : null,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0), // Padding around the image
                  child: Image.asset(
                    thumbnail['imagePath'] as String,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(child: Icon(Icons.error, size: 20));
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
