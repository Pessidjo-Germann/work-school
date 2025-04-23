import 'package:flutter/material.dart';

class CategoryFilterWidget extends StatefulWidget {
  const CategoryFilterWidget({super.key});

  @override
  State<CategoryFilterWidget> createState() => _CategoryFilterWidgetState();
}

class _CategoryFilterWidgetState extends State<CategoryFilterWidget> {
  final List<String> categories = [
    'All',
    'Sport Watch',
    'Smart Watch',
    'Dress Watch',
    'Casual Watch'
  ];
  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          final isSelected = category == selectedCategory;
          return Padding(
            padding: EdgeInsets.only(
                left: index == 0 ? 16.0 : 8.0,
                right: index == categories.length - 1 ? 16.0 : 0),
            child: ChoiceChip(
              label: Text(category),
              selected: isSelected,
              onSelected: (selected) {
                if (selected) {
                  setState(() {
                    selectedCategory = category;
                  });
                }
              },
              backgroundColor: Colors.grey[200],
              selectedColor: Colors.black87,
              labelStyle: TextStyle(
                color: isSelected ? Colors.grey[200] : Colors.black,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide.none),
              showCheckmark: false,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
            ),
          );
        },
      ),
    );
  }
}
