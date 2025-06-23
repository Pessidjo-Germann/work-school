import 'package:flutter/material.dart';
import '../widget/category_filter_widget.dart';
import '../widget/home_app_bar.dart';
import '../widget/new_arrival_header_widget.dart';
import '../widget/product_grid_widget.dart';
import '../widget/promo_banner_widget.dart';
import '../widget/search_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeAppBar(),
              SearchBarWidget(),
              PromoBannerWidget(),
              CategoryFilterWidget(),
              NewArrivalHeaderWidget(),
              // Produits locaux existants
              ProductGridWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
