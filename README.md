# FocusTV

FocusTV (alias **FocusPocus**) est une application de démonstration pour Apple TV qui illustre les API de gestion du focus en SwiftUI sur tvOS.

Elle a été créée pour accompagner mon tout premier talk, donné lors du **meetup Cocoaheads Nantes le 6 juin 2024**.

📺 **Vidéo de la talk :** https://www.youtube.com/watch?v=9p_q0EFP61s&t=553s

## Ce que la démo montre

L'app est organisée en une TabView où chaque onglet met en scène une API SwiftUI liée au focus sur tvOS :

1. **`focusSection()`** — comment regrouper des vues pour guider la navigation à la télécommande et rendre certaines zones atteignables même quand aucune vue focusable ne se trouve sur le trajet direct.
2. **`focusable()`** — comment rendre n'importe quelle vue focusable, réagir au changement de focus et styliser l'état focus (exemple avec les maisons de Poudlard).
3. **`@FocusedValue` / `focusedValue()`** — comment faire remonter une valeur associée à la vue actuellement focalisée jusqu'à une vue parente (ici, une vidéo de fond qui change selon l'élément survolé).

L'objectif est de donner aux développeurs tvOS des exemples concrets, visuels et réutilisables pour maîtriser le focus engine de SwiftUI.

## Lancer le projet

Ouvrir `TvFocusable/TvFocusable.xcodeproj` dans Xcode et lancer la cible `TvFocusable` sur un simulateur Apple TV (ou un vrai Apple TV).
