import 'package:flutter/material.dart';
import '../widget/api_product_grid_widget.dart';
import '../widget/bottom_nav_bar_widget.dart';
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
      // appBar: const HomeAppBar(),
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
              // Séparateur
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: const Divider(thickness: 2),
              ),
              // Titre pour les produits de l'API
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      'Produits depuis l\'API',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              // Produits de l'API
              ApiProductGridWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
