import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String price;

  const ProductCardWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(15.0)),
                child: Image.asset(
                  imagePath,
                  height: 150, // Augmentation de la hauteur de l'image
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.black.withOpacity(0.7),
                  child: const Icon(Icons.bookmark_border,
                      color: Colors.white, size: 18), // Placeholder icon
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0), // Augmentation du padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16), // Titre légèrement plus grand
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    '2.3k Sold', // Texte de remplacement, devrait être dynamique
                    style: TextStyle(
                        color: Colors.orange[700],
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Align(
                      // Alignement du prix en bas à droite
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 6.0),
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(
                              20.0), // Coins plus arrondis
                        ),
                        child: Text(
                          price,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16), // Prix légèrement plus grand
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8), // Réduction de l'espacement
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: 0.6,
                  backgroundColor: Colors.black,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(Colors.orange[700]!),
                  minHeight: 6,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
