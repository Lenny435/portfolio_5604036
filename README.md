# 📱 Portfolio_5604036 – Lenny Wanjiku (Matrikelnummer: 5604036)

Dieses Repository enthält mein Portfolio-Projekt, das mit **Flutter** entwickelt wurde. Die App zeigt eine Startseite mit einer Begrüßungsnachricht und wird schrittweise erweitert.

---

## 🚀 Verwendete Technologien

- Flutter **3.29.2**
- Dart
- Git für Versionskontrolle

---

## 🛠 Installation & Start

Falls du das Projekt ausführen möchtest, folge diesen Schritten:

1. **Repository klonen:**

```bash
git clone https://github.com/Lenny435/portfolio_5604036.git
cd portfolio_5604036
```

2. **Flutter-Abhängigkeiten installieren:**

```bash
flutter pub get
```

3. **App starten:**

```bash
flutter run
```

---

## 🔀 Git-Branching-Strategie

Um eine klare und strukturierte Code-Verwaltung zu gewährleisten, nutzen wir die folgende Git-Branching-Strategie:

### 📌 `main` Branch
Der `main`-Branch enthält die **stabile Version des Codes**. Änderungen werden erst nach **Prüfung und Fertigstellung** hier eingepflegt.

### 🌱 Feature-Branches (`feature/*`)
- **Jede neue Funktion oder Änderung wird in einem separaten Feature-Branch entwickelt.**
- Beispiel: `feature/startseite` für die Implementierung der Startseite.
- Änderungen erfolgen **ausschließlich** in dem Feature-Branch, bevor sie mit `main` gemergt werden.

### 🔄 Merge-Prozess
1️⃣ Nach Fertigstellung eines Features wird es mit `main` zusammengeführt.  
2️⃣ **Empfohlen:** Merge über einen **Pull Request** auf GitHub, um eine **Überprüfung** der Änderungen zu ermöglichen.  
3️⃣ Falls nötig, werden **Merge-Konflikte** gelöst, bevor die Änderungen übernommen werden.

Diese Strategie sorgt für eine **übersichtliche und stabile Codeverwaltung** und ermöglicht eine **bessere Zusammenarbeit im Team**. 🚀