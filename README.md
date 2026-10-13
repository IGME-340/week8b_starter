# Week 8B Starter - IGME-340

Grid day. We'll take a list of 12 animals and show it as a grid of photos: first with plain text, then with real images in every shape, then with labels, and (if there's time) a popup when you tap one. It's the same list-drives-the-screen idea as the `ListView.builder` in 7B, laid out in columns.

`lib/main.dart` starts as a `MainPage` StatefulWidget with an AppBar, one line of text, and the `animals` list already filled in. The photos are in `assets/animals/`, and `pubspec.yaml` is already set up to load them. The `TODO` comments are numbered to match the steps we do in class.

---

## I. Get the Code

**Work in your own repo, not the template.** Accepting the assignment creates a repo just for you, named `igme-340-week-8b-starter-<your-github-username>`. Don't fork `IGME-340/week8b_starter` or click "Use this template" on it. I can't see work pushed anywhere else, so it won't count.

Three ways, all worth the same credit. Use whichever you already know:

- **GitHub Desktop:** clone your repo, then open the folder in VS Code.
- **Command line:** copy the URL from the green **Code** button, then `git clone <your-repo-url>`.
- **Neither one cooperating?** Skip cloning and edit your files directly on GitHub.com. Full credit, no penalty.

Step by step for all three: [Participation Repos](https://github.com/jptweb/IGME-340-Shared/blob/main/documents/participation.md).

Once it's on your machine, open the folder in VS Code. Make sure you open the folder that *contains* `pubspec.yaml`, not the one above it. Opening the parent folder is the most common way this goes wrong, and the error you get looks completely unrelated to the real cause.

**Don't clone into a path with spaces.** `Documents/IGME 340/` will cause failures later that have nothing to do with your code. Use something like `Documents/igme-340/`.

---

## II. Run It

```bash
flutter pub get
flutter run
```

No packages to add today, and nothing goes over the network, so any device works: the Android emulator, Chrome, or desktop. You should see a teal app bar that says Animal Grid and "12 animals. Tap one to learn more." with empty space below it.

---

## III. Follow Along in Class

Everything today happens in `lib/main.dart`. You won't need to touch `pubspec.yaml` or the photos.

| What | What it does |
|---|---|
| `GridView.count` | A grid where you write out every child yourself. Fine for three things, not for a list. |
| `GridView.builder` | Builds one cell per item in your list, like `ListView.builder` does. |
| `SliverGridDelegateWithFixedCrossAxisCount` | Says how the grid is laid out: how many columns, and the space between cells. |
| `itemCount` / `itemBuilder` | How many cells, and what goes in the cell at each `index`. Same as 7B. |
| `Expanded` | A grid in a `Column` has to be told how much room it gets. Same as the list in 7B. |
| `Image.asset` | Shows a photo from the project's assets. `Image.network` works the same way with a URL. |
| `fit: BoxFit.cover` | Fills the cell and crops what doesn't fit, like `object-fit: cover` in CSS. |
| `GridTile` / `GridTileBar` | A cell with a label bar floating over the bottom of it. |
| `GestureDetector` | Makes anything tappable with `onTap`. |
| `showDialog` / `AlertDialog` | The popup from 4B, used here to show the full record for one animal. |

---

## IV. Commit and Push

### How this one is graded

To get credit, your pushed code has to show today's work:

- a `GridView.builder` that gets its `itemCount` and its items from the `animals` list
- the photos showing in the grid

The popup is welcome but not required. It doesn't need to be finished, and it doesn't need to look like mine. An untouched starter or a "Hello World" commit doesn't count.

**Missed class?** You can still earn it. The [Week 8B notes](https://github.com/jptweb/IGME-340-Shared/blob/main/weekly/8B.md) have the code for every piece.

**Push before the start of our next class** (Tuesday Oct 20). Pushing at the end of class is a good habit, so do that too.

### How to push

**GitHub Desktop:** write a summary, click **Commit to main**, then **Push origin**.

**Command line:**

```bash
git add .
git commit -m "Week 8B in-class work"
git push
```

**If push is fighting you:** open `lib/main.dart` on GitHub.com, click the pencil, paste your code in, and commit there. Same credit.

---

## V. If Something Goes Wrong

| Problem | What to do |
|---|---|
| "Unable to load asset: assets/animals/..." | Make sure you opened the folder that contains `pubspec.yaml`. If you changed `pubspec.yaml`, stop the app and run it again (hot reload doesn't pick up new assets). |
| Red screen: "Vertical viewport was given unbounded height" | The grid needs a height. Wrap the `GridView` in `Expanded`. |
| The photos are squished, stretched, or have gaps around them | That's the `fit:` property. We try all of them in class; the [Week 8B notes](https://github.com/jptweb/IGME-340-Shared/blob/main/weekly/8B.md) have the table. |
| One photo is blurry | The cat. It's a tiny photo on purpose, so you can see what happens when `cover` stretches it. |
| Tapping a photo does nothing | The `GestureDetector` has to wrap the whole `GridTile`, and its `onTap` has to call `showAnimal`. |
| The popup won't close | Tap outside it, or add the Close button (Step 11). |
| Blue squiggle under something | That's a lint suggestion, not an error. Your code still runs. |
| `git push` asks for a password | GitHub wants a token, not your account password. Easiest fix is to install [GitHub CLI](https://cli.github.com) and run `gh auth login`. |
| `flutter pub get` complains about SDK versions | Run `flutter --version` and send me the output on Slack. This template is built to accept a wide range, so this one is worth reporting. |
| Something else | Slack me. Don't sit on it quietly, a broken environment compounds fast. |

---

Photos from [Unsplash](https://unsplash.com) by way of [picsum.photos](https://picsum.photos), free to use under the Unsplash License. Each photographer is credited in the `animals` list.
