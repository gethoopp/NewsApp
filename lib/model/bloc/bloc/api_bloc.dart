import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:newsapp/model/api/data.dart';

import 'package:newsapp/model/api/provider.dart';

part 'api_event.dart';
part 'api_state.dart';

class ApiBloc extends Bloc<newsEvent, newsState> {
  final newsAPI newsApi = newsAPI();
  ApiBloc() : super(ApiInitial()) {
    on<NewsList>((event, emit) async {
      try {
        emit(ApiInitial());
        print('masuk');
        final listm = await newsApi.getNews();

        emit(newsModelload(listm));
      } catch (e) {
         emit(errorLoad());
      }
    });
  }
}
