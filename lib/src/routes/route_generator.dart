import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteGenerator {

  Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      // case NewsListScreen.id:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider<NewsBloc>.value(
      //       value: NewsBloc(),
      //       child: const NewsListScreen(),
      //     ),
      //   );
      //
      // case NewsDetailSliderScreen.id:
      //   return MaterialPageRoute(
      //     builder: (context) {
      //       return NewsDetailSliderScreen(newsList: args as List<Article>);
      //     },
      //   );
      //
      // case NewsDetailScreen.id:
      //   return MaterialPageRoute(
      //     builder: (context) {
      //       return NewsDetailScreen(articleData: args as Article);
      //     },
      //   );
      //
      // case CountryListScreen.id:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider<CountryBloc>.value(
      //       value: CountryBloc(),
      //       child: const CountryListScreen(),
      //     ),
      //   );
      //
      // case CountryListCenterScreen.id:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider<CountryBloc>.value(
      //       value: CountryBloc(),
      //       child: CountryListCenterScreen(selectedCountry: args as String),
      //     ),
      //   );
      //
      // case NewsListPaginationScreen.id:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider<NewsBloc>.value(
      //       value: NewsBloc(),
      //       child: const NewsListPaginationScreen(),
      //     ),
      //   );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Error while loading new page'),
        ),
      );
    });
  }
}