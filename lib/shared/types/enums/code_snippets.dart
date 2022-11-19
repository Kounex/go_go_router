enum CodeSnippets {
  navigatorPushBlueprint,
  navigatorPushExample,
  stackExample,
  dialogExample,
  navigatorPop,
  navigatorRoutes,
  navigatorPushNamed;

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
      case CodeSnippets.navigatorRoutes:
        return '''
  routes: {
    '/': (context) => HomeView(),
    '/games': (context) => GamesView(),
    '/games/detail': (context) => GamesDetailView(),
    '/about': (context) => AboutView(),
  },''';
      case CodeSnippets.navigatorPushNamed:
        return '''
  Navigator.of(context).pushNamed('/games');''';
    }
  }
}
