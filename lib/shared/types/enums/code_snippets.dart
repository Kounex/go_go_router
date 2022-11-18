enum CodeSnippets {
  imperativeBasicHome;

  String get text {
    switch (this) {
      case CodeSnippets.imperativeBasicHome:
        return '''
    void main() {
        runApp(
            RootNavState(
                child: App(),
            ),
        );
    }''';
    }
  }
}
