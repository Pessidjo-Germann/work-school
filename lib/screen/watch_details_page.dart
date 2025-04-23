import 'package:flutter/material.dart'; // Keep only one import
import '../widget/details_app_bar.dart';
import '../widget/watch_image_viewer_widget.dart';
import '../widget/watch_thumbnail_selector_widget.dart';
import '../widget/watch_info_widget.dart';
import '../widget/size_selector_widget.dart';
import '../widget/details_bottom_action_bar.dart'; // Import the bottom action bar

class WatchDetailsPage extends StatelessWidget {
  const WatchDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DetailsAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WatchImageViewerWidget(),
            SizedBox(height: 10),
            WatchThumbnailSelectorWidget(),
            SizedBox(height: 10),
            WatchInfoWidget(),
            SizedBox(height: 10),
            SizeSelectorWidget(),
            SizedBox(height: 20), // Add padding before bottom bar overlaps
          ],
        ),
      ),
      bottomNavigationBar: DetailsBottomActionBar(), // Add the bottom action bar here
    );
  }
}
