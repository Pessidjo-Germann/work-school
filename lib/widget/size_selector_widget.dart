import 'package:flutter/material.dart';

class SizeSelectorWidget extends StatefulWidget {
  const SizeSelectorWidget({super.key});

  @override
  State<SizeSelectorWidget> createState() => _SizeSelectorWidgetState();
}

class _SizeSelectorWidgetState extends State<SizeSelectorWidget> {
  // Placeholder data - replace with actual data
  final List<String> _sizes = ['40', '41', '42', '43', '44'];
  String _selectedSize = '42'; // Default selected size from image

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Size',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Dress Watch', // Subtitle from image
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(height: 10),
          Wrap( // Use Wrap for chips that might wrap on smaller screens
            spacing: 10.0, // Horizontal spacing between chips
            runSpacing: 8.0, // Vertical spacing if chips wrap
            children: _sizes.map((size) {
              final isSelected = size == _selectedSize;
              return ChoiceChip(
                label: Text(size),
                selected: isSelected,
                onSelected: (selected) {
                  if (selected) {
                    setState(() {
                      _selectedSize = size;
                    });
                  }
                },
                backgroundColor: Colors.grey[200],
                selectedColor: Colors.orangeAccent.withOpacity(0.8), // Match image highlight
                labelStyle: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide.none,
                ),
                showCheckmark: false,
                padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
