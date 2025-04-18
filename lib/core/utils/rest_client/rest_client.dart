import 'package:dio/dio.dart';

class RestClient {
  factory RestClient() =>
      _instance; // 외부에서 RestClient()를 호출할때마다 _instance를 반환 해준다.

  RestClient._internal(); //생성자에 '_' private 이름을 붙여 외부에서 생성자를 생성 못하도록 한다.

  final Dio _dio = Dio();
  Dio get getDio => _dio;

  static final RestClient _instance = RestClient._internal(); //
}

// private 생성자인 RestClient._internal()을 통해 _instance를 단 한 번만 생성한다.
// 이후 외부에서 RestClient()를 호출하면 항상 이 _instance를 반환한다.
// _instance는 처음 생성 이후 절대 변하지 않는 [싱글톤] 인스턴스이므로
// 언제 어디서 호출하더라도 동일한 인스턴스를 참조하게 된다.
