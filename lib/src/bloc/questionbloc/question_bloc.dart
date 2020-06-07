import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stackoverflow/src/bloc/questionbloc/question_event.dart';
import 'package:stackoverflow/src/bloc/questionbloc/question_state.dart';
import 'package:stackoverflow/src/model/question_data.dart';
import 'package:stackoverflow/src/repository/home_repository.dart';

class QuestionBloc extends Bloc<QuoteEvent, QuestionState> {
  final HomeRepository homeRepository;

  QuestionBloc(this.homeRepository) : assert(homeRepository != null);

  @override
  QuestionState get initialState => Empty();

  @override
  Stream<QuestionState> mapEventToState(QuoteEvent event) async* {
    if (event is FrechQuestion) {
      yield QuestionLoading();
      try {
        final QuestionData quote = await homeRepository.fetchQuote();
        yield QuestionLoaded(quote);
      } catch (_) {
        yield QuoteError();
      }
    }
  }
}
