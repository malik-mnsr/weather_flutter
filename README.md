Cette application permet de consulter les informations météorologiques en temps réel avec une interface utilisateur élégante et intuitive. Le projet suit les principes de Clean Architecture pour garantir la maintenabilité, la testabilité et la scalabilité du code.

## Fonctionnalités

- Affichage des données météorologiques en temps réel
- Recherche de villes
- Interface utilisateur moderne et responsive
- Localisation en français
- Gestion d'état avec BLoC
- Actualisation des données

## Architecture

Le projet suit l'architecture Clean Architecture avec trois couches principales :

```
lib/
├── core/           # Configuration, thème, injection de dépendances
├── data/           # Sources de données et implémentations des repositories
├── domain/         # Entités, cas d'usage et contrats des repositories
└── presentation/   # UI, pages, widgets et BLoC
```

### Principes architecturaux

- **Separation of Concerns** : Séparation claire entre la logique métier et l'interface utilisateur
- **Dependency Injection** : Utilisation de GetIt pour l'injection de dépendances
- **State Management** : Gestion d'état avec BLoC/Cubit
- **Error Handling** :  Gestion des erreurs avec Dartz (Either)

## Installation

### Prérequis

- Flutter SDK (version 3.0.0 ou supérieure)
- Dart SDK
- Un éditeur de code (VS Code, Android Studio, etc.)
- Un émulateur ou un appareil physique

### Étapes d'installation

1. **Cloner le repository**
   ```bash
   git clone https://github.com/malik-mnsr/weather_flutter. git
   cd weather_flutter
   ```

2. **Installer les dépendances**
   ```bash
   flutter pub get
   ```

3. **Configurer les variables d'environnement**
   
   Créer un fichier `.env` à la racine du projet : 
   ```env
   WEATHER_API_KEY=votre_clé_api_ici
   ```
   
   Note : Vous pouvez obtenir une clé API gratuite sur [OpenWeatherMap](https://openweathermap.org/api) ou tout autre service météo. 

4. **Générer les fichiers de code**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

5. **Lancer l'application**
   ```bash
   flutter run
   ```
## Plateformes supportées

- Android
- Linux
- iOS (nécessite un environnement macOS)
- Web
- Windows
