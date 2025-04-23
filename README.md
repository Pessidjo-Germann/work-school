# Work School Flutter Project

Ce projet est une application Flutter présentant une interface utilisateur pour une boutique de montres.

## Comment cloner le projet

Pour cloner ce projet, utilisez la commande suivante dans votre terminal :

```bash
git clone <URL_DU_REPOSITORY>
cd work_school
```

Remplacez `<URL_DU_REPOSITORY>` par l'URL réelle du dépôt Git.

## Comment lancer le projet

Assurez-vous d'avoir Flutter installé sur votre machine. Ensuite, suivez ces étapes :

1.  Récupérez les dépendances du projet :
    ```bash
    flutter pub get
    ```
2.  Lancez l'application sur un émulateur ou un appareil connecté :
    ```bash
    flutter run
    ```

## Description des Widgets

Voici une description des principaux widgets créés dans ce projet :

*   **lib/screen/home_page.dart**: Structure de base de l'écran d'accueil.
*   **lib/widget/home_app_bar.dart**: AppBar personnalisée pour l'écran d'accueil.
*   **lib/widget/search_bar_widget.dart**: Champ de saisie pour la recherche.
*   **lib/widget/promo_banner_widget.dart**: Bannière promotionnelle.
*   **lib/widget/category_filter_widget.dart**: Liste horizontale de puces de catégories.
*   **lib/widget/new_arrival_header_widget.dart**: En-tête pour la section "Nouveautés".
*   **lib/widget/product_card_widget.dart**: Carte pour afficher un seul produit.
*   **lib/widget/product_grid_widget.dart**: Vue en grille pour afficher les cartes de produits.
*   **lib/widget/bottom_nav_bar_widget.dart**: Barre de navigation inférieure.
*   **lib/screen/watch_details_page.dart**: Écran pour afficher les détails d'une montre.
*   **lib/widget/details_app_bar.dart**: AppBar personnalisée pour l'écran des détails de la montre.
*   **lib/widget/watch_image_viewer_widget.dart**: Widget pour afficher l'image principale de la montre avec indicateur de page.
*   **lib/widget/watch_thumbnail_selector_widget.dart**: Liste horizontale de miniatures pour les couleurs/styles de montres.
*   **lib/widget/watch_info_widget.dart**: Widget affichant le titre et la description de la montre.
*   **lib/widget/size_selector_widget.dart**: Widget pour sélectionner la taille de la montre.
*   **lib/widget/details_bottom_action_bar.dart**: Barre d'action inférieure avec le prix et le bouton 'Acheter maintenant'.

## Ressources Flutter

Pour commencer avec Flutter :

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

Pour obtenir de l'aide sur le développement Flutter, consultez la [documentation en ligne](https://docs.flutter.dev/), qui propose des tutoriels, des exemples, des conseils sur le développement mobile et une référence complète de l'API.
