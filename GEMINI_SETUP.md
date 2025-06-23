# Configuration de l'API Gemini

## Instructions pour configurer votre clé API Gemini

1. **Obtenez votre clé API Gemini** :
   - Visitez [Google AI Studio](https://ai.google.dev/)
   - Créez un compte ou connectez-vous
   - Générez une nouvelle clé API

2. **Configurez la clé dans l'application** :
   - Ouvrez le fichier `lib/config/gemini_config.dart`
   - Remplacez `'VOTRE_CLE_API_GEMINI_ICI'` par votre vraie clé API
   
   ```dart
   class GeminiConfig {
     static const String apiKey = 'votre-vraie-cle-api-ici';
   }
   ```

3. **Sécurité** :
   - Ne commitez jamais votre vraie clé API dans le code source
   - Utilisez des variables d'environnement en production
   - Considérez créer un fichier `gemini_config_local.dart` dans votre `.gitignore`

## Fonctionnalités de l'onglet Shop IA

L'onglet Shop intègre l'IA Gemini pour offrir :

- **Assistance shopping intelligente** : L'IA peut recommander des produits
- **Comparaisons de produits** : Obtenez des conseils personnalisés
- **Chat interactif** : Posez des questions sur les produits disponibles
- **Recommandations contextuelles** : L'IA connaît votre catalogue de produits

## Exemples de questions à poser à l'IA

- "Quel est le meilleur produit pour un étudiant ?"
- "Compare l'iPhone 14 et le MacBook Air"
- "Recommande-moi quelque chose dans mon budget de 500€"
- "Quels sont les avantages des AirPods Pro ?"
