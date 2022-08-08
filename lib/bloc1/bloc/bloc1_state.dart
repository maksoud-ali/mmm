


part of 'bloc1_bloc.dart';

abstract class Bloc1State extends Equatable {
  const Bloc1State();
  
  @override
  List<Object> get props => [];
}

class Bloc1Initial extends Bloc1State {
  Color c1 = Colors.red ;

    @override
  List<Object> get props => [c1];
}
