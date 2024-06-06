import 'package:don_gestin_movil/views/cards_view.dart';
import 'package:don_gestin_movil/views/home_view.dart';
import 'package:don_gestin_movil/views/main_view.dart';
import 'package:don_gestin_movil/views/register.dart';
import 'package:don_gestin_movil/views/reminders_view.dart';
import 'package:don_gestin_movil/views/saving_plans_view.dart';
import 'package:flutter/material.dart';

import 'package:don_gestin_movil/views/landpage_view.dart';
import 'package:don_gestin_movil/views/control_view.dart';
import 'package:don_gestin_movil/views/login_view.dart';


class CustomRoutes {
  static final routes = <String, WidgetBuilder>{
    LandPageView.id: (context) => const LandPageView(),
    LoginView.id: (context) => const LoginView(),
    RegisterView.id: (context) => const RegisterView(),
    HomeView.id: (context) => const HomeView(),
    ControlView.id: (context) => const ControlView(),
    RemindersView.id: (context) => const RemindersView(),
    MainView.id: (context) => const MainView(),
    SavingsPlansView.id: (context) => const SavingsPlansView(),
    CardsView.id: (context) => const CardsView(),
  };
}