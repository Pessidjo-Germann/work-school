import 'dart:async';
import 'package:flutter/material.dart';
import 'page_indicator_widget.dart';

class PromoBannerWidget extends StatefulWidget {
  const PromoBannerWidget({super.key});

  @override
  State<PromoBannerWidget> createState() => _PromoBannerWidgetState();
}

class _PromoBannerWidgetState extends State<PromoBannerWidget> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  final List<String> _imagePaths = [
    'asset/banner.png',
    'asset/banner.png',
    'asset/banner.png',
    'asset/banner.png',
    'asset/banner.png',
  ];

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < _imagePaths.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      if (_pageController.hasClients) {
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 180,
            child: PageView.builder(
              controller: _pageController,
              itemCount: _imagePaths.length,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    _imagePaths[index],
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[300],
                        child: const Center(
                          child: Icon(Icons.image_not_supported,
                              color: Colors.grey, size: 50),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10.0),
          PageIndicatorWidget(
            itemCount: _imagePaths.length,
            currentPage: _currentPage,
          ),
        ],
      ),
    );
  }
}
