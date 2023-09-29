import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';




part 'themecubit_state.dart';

class ThemecubitCubit extends Cubit<ThemecubitState> {
  ThemecubitCubit() : super(lightTheme());


  void changetheme (){
    if (state is darkTheme){
      emit(lightTheme());
    
  } else {
    emit(darkTheme());
  }
}
}
