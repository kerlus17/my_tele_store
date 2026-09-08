import 'package:tele_store/features/auth/data/models/login_request_body.dart';
import 'package:tele_store/features/auth/data/models/sign_up_request.dart';

class AuthQueries {
  factory AuthQueries() {
    return _instance;
  }

  const AuthQueries._();

  static const AuthQueries _instance = AuthQueries._();

  Map<String, dynamic> loginMapQuery({required LoginRequestBody body}) {
    return {
      'query': r'''
        mutation Login($email: String!, $password: String!) {
          login(email: $email, password: $password) {
            access_token
            refresh_token
          }
        }
      ''',
      'variables': {
        'email': body.email,
        'password': body.password,
      },
    };
  }

  Map<String, dynamic> SignupMapQuery({required SignUpRequestBody body}) {
    return {
      'query': r'''
            mutation SignUp($name:Strinng! ,$email:Strinng! ,$password:Strinng! ,$avatar:Strinng!){
      	addUser(
      		data: {
      			name: $name
      			email: $email
      			password: $password
      			avatar: $avatar
            role:customer

      		}
      	) {
      		id
      		name
      		avatar
          email
      	}
      }
      ''',

      'variables': {
        'name': body.name,
        'email': body.email,
        'password': body.password,
        'avatar': body.avatar,
      },
    };
  }
}
