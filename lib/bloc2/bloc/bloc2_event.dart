part of 'bloc2_bloc.dart';

abstract class Bloc2Event extends Equatable {
  const Bloc2Event();

  @override
  List<Object> get props => [];
}

class Bloc2ClickEvent extends  Bloc2Event  {
final int index ;

  Bloc2ClickEvent({required this.index});
  
  @override
  List<Object> get props => [index];  
}
