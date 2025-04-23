import 'package:flutter/material.dart';

class WatchInfoWidget extends StatefulWidget {
  // Placeholder data - replace with actual data passed from the screen
  final String title;
  final String description;

  const WatchInfoWidget({
    super.key,
    this.title = 'Round black Tissot', // Default placeholder
    this.description =
        'Dress Watches. Less is more when it comes to dress watches. These timepieces are your silent companions at galas and corporate boardrooms, offering just a touch of elegance and sophistication without being overly flashy.', // Default placeholder
  });

  @override
  State<WatchInfoWidget> createState() => _WatchInfoWidgetState();
}

class _WatchInfoWidgetState extends State<WatchInfoWidget> {
  bool _isExpanded = false;
  final int maxLinesCollapsed = 3; // Max lines to show when collapsed

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          LayoutBuilder(
            builder: (context, constraints) {
              // Use a TextSpan to calculate if the text overflows
              final span = TextSpan(
                text: widget.description,
                style: TextStyle(fontSize: 14, color: Colors.grey[700], height: 1.4),
              );
              final tp = TextPainter(
                text: span,
                maxLines: maxLinesCollapsed,
                textDirection: TextDirection.ltr,
              );
              tp.layout(maxWidth: constraints.maxWidth);
              final bool isOverflowing = tp.didExceedMaxLines;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.description,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700], height: 1.4),
                    maxLines: _isExpanded ? null : maxLinesCollapsed,
                    overflow: _isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                  ),
                  if (isOverflowing) // Only show "Read More" if text overflows
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isExpanded = !_isExpanded;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          _isExpanded ? 'Read Less' : '... Read More',
                          style: const TextStyle(
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
