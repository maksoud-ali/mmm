import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part 'bloc2_event.dart';
part 'bloc2_state.dart';

class Bloc2Bloc extends Bloc<Bloc2Event, Bloc2State> {
  Bloc2Bloc() : super(Bloc2Initial(index: 0)) {
    on<Bloc2Event>((event, emit) {
      if (event is Bloc2ClickEvent) {
        emit(Bloc2Initial(index: event.index));
        
      }
     
    });
  }
}
