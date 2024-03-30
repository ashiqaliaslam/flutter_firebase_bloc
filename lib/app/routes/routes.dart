import 'package:flutter/widgets.dart';
import 'package:flutter_login/app/bloc/app_bloc.dart';

import '../../home/home.dart';
import '../../login/login.dart';
import '../app.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
