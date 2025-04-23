import 'package:flutter/material.dart';
import 'page_indicator_widget.dart'; // Reuse existing widget

class WatchImageViewerWidget extends StatefulWidget {
  const WatchImageViewerWidget({super.key});

  @override
  State<WatchImageViewerWidget> createState() => _WatchImageViewerWidgetState();
}

class _WatchImageViewerWidgetState extends State<WatchImageViewerWidget> {
  // Placeholder data - replace with actual data
  final List<String> _watchImages = [
    'asset/wristwatch.png', // Placeholder image
    'asset/wristwatch.png',
    'asset/wristwatch.png',
  ];
  int _currentPage = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Estimate height based on image proportions or use AspectRatio
    double imageContainerHeight = MediaQuery.of(context).size.width * 0.8;

    return Column(
      children: [
        Container(
          height: imageContainerHeight,
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Circular background
              Container(
                width: imageContainerHeight * 0.9, // Slightly smaller than container
                height: imageContainerHeight * 0.9,
                decoration: BoxDecoration(
                  color: Colors.orange.shade100.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
              ),
              // PageView for watch images
              SizedBox(
                height: imageContainerHeight * 0.7, // Adjust image size within circle
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _watchImages.length,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Image.asset(
                      _watchImages[index],
                      fit: BoxFit.contain,
                       errorBuilder: (context, error, stackTrace) {
                         return const Center(child: Icon(Icons.error)); // Placeholder for error
                       },
                    );
                  },
                ),
              ),
              // Optional: Add side arrows if needed based on design
              // Positioned(left: 10, child: Icon(Icons.arrow_back_ios, color: Colors.grey)),
              // Positioned(right: 10, child: Icon(Icons.arrow_forward_ios, color: Colors.grey)),
            ],
          ),
        ),
        const SizedBox(height: 15),
        PageIndicatorWidget(
          itemCount: _watchImages.length,
          currentPage: _currentPage,
          activeColor: Colors.orangeAccent, // Match image style
          inactiveColor: Colors.grey.shade400,
          activeWidth: 20.0,
          inactiveWidth: 8.0,
          height: 4.0,
          spacing: 5.0,
        ),
      ],
    );
  }
}
