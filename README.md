# 🏪 ShopStore - Boutique Apple Flutter

Une application e-commerce moderne développée avec Flutter et Riverpod, spécialisée dans les produits Apple (iPhone, AirPods, Apple Watch).


## 📱 Aperçu



### ✨ Fonctionnalités

🛍️ Catalogue produits - Affichage des produits Apple avec images transparentes

#### 🛒 Gestion du Panier
Ajout/Retrait instantané : Boutons dynamiques "Add to Cart" / "Remove"

État persistant : Le panier conserve son contenu pendant la session

Badge de compteur : Indicateur visuel du nombre d'articles dans l'icône panier

Navigation fluide : Accès rapide au panier depuis toutes les pages


💰 Calcul automatique - Total du panier mis à jour instantanément

🎨 UI moderne - Design Material 3 avec cartes élégantes

📱 Responsive - Adaptation parfaite sur mobile

🔄 State Management - Gestion d'état robuste avec Riverpod

🍎 Produits Apple - Sélection exclusive d'iPhone, AirPods et Apple Watch

## 🚀 Technologies Utilisées
Flutter - Framework UI cross-platform
Dart - Langage de programmation
Riverpod - Gestion d'état réactive

 ## 🛠️ Installation
### Prérequis
Flutter 3.19 ou supérieur
Dart 3.3 ou supérieur
Android Studio / VS Code


### Étapes d'installation
Cloner le repository
```bash
git clone https://github.com/Erradilatifa/ShopStore.git
cd ShopStore

```
Installer les dépendances
```bash
flutter pub get

```
Lancer l'application

```bash
flutter run
```
### 📁 Structure du Projet

```
lib/
├── main.dart                 # Point d'entrée de l'application
├── models/
│   └── product.dart         # Modèle de données Product
├── providers/
│   ├── products_provider.dart # Provider des produits
│   └── cart_provider.dart    # Provider du panier
├── screens/
│   ├── home/
│   │   └── home_screen.dart  # Page d'accueil
│   └── cart/
│       └── cart_screen.dart  # Page du panier
└── shared/
    └── cart_icon.dart        # Widget icône panier
```

## 📸 Captures d'écran
### Page d'accueil
<img width="725" height="792" alt="Immagine 2025-10-20 012926" src="https://github.com/user-attachments/assets/9b8e76af-eb4d-4814-9694-179e1f254b62" />

### Page d'Accueil ShopStore - Sélection Produits iPhone
<img width="725" height="801" alt="Immagine 2025-10-20 013010" src="https://github.com/user-attachments/assets/f6bdf152-7b99-44b4-9809-1a66c238e129" />


### Panier
<img width="721" height="862" alt="Immagine 2025-10-20 013038" src="https://github.com/user-attachments/assets/27b92ef2-2366-4c85-87da-8011186a10a8" />


<div align="center"> ⭐ N'oubliez pas de donner une étoile au projet si vous l'aimez !
Made with ❤️ using Flutter

</div>

