part of 'api_bloc.dart';

// ignore: camel_case_types
abstract class newsEvent extends Equatable {
  const newsEvent();

}

class NewsList extends newsEvent{

  @override
  List<Object> get props => [];
}
