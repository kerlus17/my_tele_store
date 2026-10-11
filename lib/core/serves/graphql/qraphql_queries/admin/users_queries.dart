import 'package:tele_store/features/admin/add_categories/data/models/update_category_request_body.dart';

class UsersQueries {
  factory UsersQueries() {
    return _instance;
  }

  const UsersQueries._();

  static const UsersQueries _instance = UsersQueries._();

  Map<String, dynamic> getAllUsersQuery() {
    return {
      'query': '''
    {
     users{
		id
		name
		email
  }
    }
  ''',
    };
  }



  
  Map<String, dynamic> deleteUser({required String userId}) {
    return {
      'query': '''
   mutation deleteUser($userId: ID!) {
	deleteUser(id: $userId)
}

  ''',
  'variables': {
        'userId': userId,
      },
    };
  }
}
