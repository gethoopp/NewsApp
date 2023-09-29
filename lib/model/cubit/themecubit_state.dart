part of 'themecubit_cubit.dart';

sealed class ThemecubitState extends Equatable {
  const ThemecubitState();

  @override
  List<Object> get props => [];
}

final class darkTheme extends ThemecubitState {
  ThemeData get themeData => ThemeData(
      primaryColor: Colors.black,
      focusColor: Colors.redAccent,
      textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.white)));
}

final class lightTheme extends ThemecubitState {
  ThemeData get themeData => ThemeData(
      primaryColor: Colors.white,
      focusColor: Colors.redAccent,
      textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.black)));
}
