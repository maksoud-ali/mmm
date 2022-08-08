part of 'bloc2_bloc.dart';

abstract class Bloc2State extends Equatable {
  const Bloc2State();
  
  @override
  List<Object> get props => [];
}



class Bloc2Initial extends Bloc2State {

final int index ; 
final Color c1 = Colors.amber ;

  Bloc2Initial({required this.index});

    
  @override
  List<Object> get props => [c1,index];
}
