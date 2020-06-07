import 'package:stackoverflow/src/api/ApiClient.dart';
import 'package:stackoverflow/src/model/question_data.dart';

class HomeRepository {
  final ApiClient _apiClient;

  HomeRepository(this._apiClient)
      : assert(_apiClient !=
            null); //==> bat buoc cac gia tri truyen vao khong rong;
  Future<QuestionData> fetchQuote() async {
    return await _apiClient.getData();
  }
}
