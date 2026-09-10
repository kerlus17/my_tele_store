

class AdminQuires {
  factory AdminQuires() {
    return _instance;
  }

  const AdminQuires._();

  static const AdminQuires _instance = AdminQuires._();

  Map<String, dynamic> numberOfProductsQuery() {
    return {
      'query': r'''
          {

            products{
		
                      title
   
              }
          }
      ''',
    };
  }

  Map<String, dynamic> numberOfCategoriessQuery() {
    return {
      'query': r'''
          {

            categories{
		
                      name
   
              }
          }
      ''',
    };
  }

  Map<String, dynamic> numberOfUserssQuery() {
    return {
      'query': r'''
          {

            users{
		
                      name
   
              }
          }
      ''',
    };
  }
}
