import 'package:equatable/equatable.dart';
import 'package:stackoverflow/src/model/question_data.dart';

abstract class QuestionState extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends QuestionState {}

class QuestionLoading extends QuestionState {}

class QuestionLoaded extends QuestionState {
  final QuestionData data;

  QuestionLoaded(this.data) : assert(data != null);

  @override
  List<Object> get props => [data];
}

class QuoteError extends QuestionState {}
