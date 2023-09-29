part of 'api_bloc.dart';

// ignore: camel_case_types
abstract class newsState extends Equatable {
  const newsState();

  @override
  List<Object> get props => [];
}

final class ApiInitial extends newsState {}

final class Apiloading extends newsState {}

// ignore: camel_case_types
class newsModelload extends newsState {
  final List<Article> articleModel;

  const newsModelload(this.articleModel);
}

// ignore: camel_case_types
class errorLoad extends newsState {
  
}
