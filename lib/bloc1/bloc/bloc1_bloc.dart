import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'bloc1_event.dart';
part 'bloc1_state.dart';

class Bloc1Bloc extends Bloc<Bloc1Event, Bloc1State> {
  Bloc1Bloc() : super(Bloc1Initial()) {
    on<Bloc1Event>((event, emit) {
    if (event is Bloc1EEvent ) {
       emit(Bloc1Initial());
    }
    });
  }
}
