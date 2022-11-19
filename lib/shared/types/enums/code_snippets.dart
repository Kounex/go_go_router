enum CodeSnippets {
  navigatorPushBlueprint,
  navigatorPushExample,
  stackExample,
  dialogExample,
  navigatorPop;

  String get text {
    switch (this) {
      case CodeSnippets.navigatorPushBlueprint:
        return '''
    Navigator.of(context).push( ... );''';
      case CodeSnippets.navigatorPushExample:
        return '''
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => GamesView(),
        ),
    ),''';
      case CodeSnippets.stackExample:
        return '''
    Stack(
        children: [
            ImperativeBasicApp( ... ),
            Positioned( ... ),
        ],
    ),''';
      case CodeSnippets.dialogExample:
        return '''
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            title: Text('Oof'),
            actions: [
                TextButton( ... ),
                TextButton( ... ),
            ],
        ),
    );''';
      case CodeSnippets.navigatorPop:
        return '''
    Navigator.of(context).pop();''';
    }
  }
}
