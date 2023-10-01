import 'package:cachcach/app/modules/auth/forgot_pass/forgot_password_screen.dart';
import 'package:cachcach/app/modules/auth/login/login_screen.dart';
import 'package:cachcach/app/modules/auth/signup/sign_up_screen.dart';
import 'package:cachcach/app/modules/bottom_bar/home_screen.dart';
import 'package:cachcach/app/modules/play/detail/detail_screen.dart';
import 'package:cachcach/app/modules/play/flip_the_card/flip_the_card_screen.dart';
import 'package:cachcach/app/modules/play/play_screen.dart';
import 'package:cachcach/app/modules/play/player/player_screen.dart';
import 'package:cachcach/app/modules/play/question/question_screen.dart';
import 'package:cachcach/app/modules/play/score_board/score_board_screen.dart';
import 'package:cachcach/app/modules/play/select_mode/select_mode_screen.dart';
import 'package:cachcach/app/modules/play/setting/setting_screen.dart';
import 'package:cachcach/app/modules/play/spin/spin_screen.dart';
import 'package:cachcach/app/modules/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteName {
  static const String splash = "/splash";
  static const String login = "/login";
  static const String signUp = "/sign-up";
  static const String forgotPassword = "/forgot-password";
  static const String forgetPassword = "/forget-password";
  static const String home = "/home";
  static const String play = "/play";
  static const String selectMode = "/select-mode";
  static const String player = "/player";
  static const String setting = "/setting";
  static const String spin = "/spin";
  static const String question = "/question";
  static const String detail = "/detail";
  static const String scoreBoard = "/score-board";
  static const String flipTheCard = "/flip-the-card";

  static const String privacyPolicy = "/privacy-policy";
  static const String welcome = '/welcome';
  static const String termOfUse = '/term-of-use';
}

class AppRoutes {
  static final screens = <String, Widget Function()>{
    RouteName.splash: () => const SplashScreen(),
    RouteName.login: () => const LoginScreen(),
    RouteName.signUp: () => const SignUpScreen(),
    RouteName.forgotPassword: () => const ForgotPasswordScreen(),
    RouteName.home: () => const HomeScreen(),
    RouteName.play: () => const PlayScreen(),
    RouteName.selectMode: () => const SelectModeScreen(),
    RouteName.player: () => const PlayerScreen(),
    RouteName.setting: () => const SettingScreen(),
    RouteName.spin: () => const SpinScreen(),
    RouteName.question: () => const QuestionScreen(),
    RouteName.detail: () => const DetailScreen(),
    RouteName.scoreBoard: () => const ScoreBoardScreen(),
    RouteName.flipTheCard: () => const FlipTheCardScreen(),
  };

  static final bindings = <String, List<Bindings> Function()>{};

  static GetPageRoute generateRoute(RouteSettings settings) {
    return GetPageRoute(
      settings: settings,
      page: screens[settings.name] ?? getDefaultScreen,
      bindings: bindings[settings.name]?.call(),
    );
  }

  static Widget getDefaultScreen() => const Scaffold(
        body: Center(child: Text('Undefined')),
      );
}
