# Inspecteur-PCB

## Contexte

Inspecteur-PCB est un projet d'intelligence artificielle dédié à la détection automatique du placement des composants électroniques sur des cartes PCB (simples et multicouches) après assemblage par technologie SMT.  
Il vise à automatiser le contrôle qualité en analysant des images de PCB pour vérifier le bon positionnement, l'orientation et la présence des composants.

## Objectifs

- Développer un modèle IA basé sur la vision par ordinateur (YOLOv8 + TensorFlow) pour détecter et localiser les composants.
- Vérifier la bonne position, orientation, présence ou absence des composants sur les cartes PCB.
- Créer un pipeline reproductible pour l'entraînement, le test et l'évaluation du modèle.
- Fournir un dataset annoté au format YOLO.
- Générer des images annotées et des rapports automatiques.

## Type de PCB ciblé

- Cartes simples (simple face)
- Cartes multicouches

## Jeu de données

Les images seront recherchées et collectées principalement à partir de sources open source (Kaggle, GitHub, etc.).

## Format d’annotation

- Format YOLO (txt par image, une ligne par composant : `classe x_center y_center width height`)

## Outils & Technologies

- Python 3.8+
- YOLOv8 (Ultralytics)
- TensorFlow
- OpenCV
- LabelImg ou Roboflow pour l’annotation
- Jupyter Notebook

## Structure du projet

```
inspecteur-pcb/
├── data/
│   ├── raw/
│   └── annotated/
├── notebooks/
│   └── 01_collecte_annotation.ipynb
├── src/
│   ├── model/
│   ├── pipeline/
│   └── utils/
├── requirements.txt
├── README.md
└── .gitignore
```

## Livrables

- Images annotées (format YOLO)
- Code source (scripts Python, notebooks)
- Modèle entraîné (.pt/.onnx)
- Documentation technique (README, rapports)
- Présentation PowerPoint (optionnel)

## Installation rapide

1. Cloner le dépôt :
   ```bash
   git clone <repo-url>
   cd inspecteur-pcb
   ```
2. Installer les dépendances :
   ```bash
   pip install -r requirements.txt
   ```

## Bonnes pratiques

- Organiser et documenter chaque étape dans des notebooks ou scripts dédiés.
- Versionner régulièrement le code et les données.
- Utiliser des datasets open source ou annoter vos propres images avec LabelImg.

## Auteur

Projet initialisé par zouzouuubz, 2025.
