import 'package:equatable/equatable.dart';

abstract class QuoteEvent extends Equatable {
  const QuoteEvent();
}

class FrechQuestion extends QuoteEvent {
  @override
  List<Object> get props => [];
}
