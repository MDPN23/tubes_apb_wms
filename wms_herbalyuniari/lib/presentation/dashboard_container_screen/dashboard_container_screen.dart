import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../Widgets/custom_bottom_bar.dart';
import '../dashboard_page/dashboard_page.dart';

class DashboardContainerScreen extends StatelessWidget {
  DashboardContainerScreen({Key? key})
    : super(
        key: key,
    );
  
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 0.51),
              colors: [appTheme.gray50, appTheme.lightGreen200],
        ),
      ),
      child: Navigator(
        key: navigatorKey,
        initialRoute: AppRoutes.dashboard_page,
        onGenerateRoute: (routeString) => PageRouteBuilder(
          pageBuilder: (ctx, ani, ani1) =>
              getCurrentPage(routeSetting.name!),
          transitionDuration: Duration(seconds: 0),
        ),
      ),
    ),
    bottomNavigationBar: _buildBottombar(context),
      ),
    );
  }

  //section Widget
  Widget _buildBottombar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type)
        );
      },
    );
  }

  //handling route dari bottom click action
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Thumbsupprimary:
        return AppRoutes.DashboardPage;
      case BottomBarEnum.Grid:
        return "/";
      case BottomBarEnum.Lock:
        return "/";
      default:
        return "/";
    }
  }

  //handling page dari route
  Widget getCurrentPage(String currentRoute){
    switch (currentRoute) {
      case AppRoutes.dashboardPage:
        return DashboardPage();
      default:
        return DefaultWidget();
    }
  }
}

  