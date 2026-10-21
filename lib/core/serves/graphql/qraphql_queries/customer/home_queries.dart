class HomeQueries {
  factory HomeQueries() {
    return _instance;
  }
  const HomeQueries._();

  static const HomeQueries _instance = HomeQueries._();

  Map<String, dynamic> getBannersMapQuery() {
    return {
      'query': '''
        {
          products{
            title
            images
          }
        }
      ''',
    };
  }
}