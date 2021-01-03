# Godot build-solutions

Github action which builds the solution

How to use it:
```
jobs:
  build:
    name: Build
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v2
        with:
          lfs: true
      - uses: remi-san/godot-build-solutions@v3.2.3
        with:
          path: './directory-containing-project.godot'
      - name: Upload Artifact
        uses: actions/upload-artifact@v2
        with:
          name: build
          path: .
```
