import 'package:flutter/material.dart';
import '../../core/services/analytics_service.dart';

class AppNavigationObserver extends NavigatorObserver {
  final AnalyticsService analyticsService;

  AppNavigationObserver(this.analyticsService);

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    analyticsService.logEvent('didPush', {'route': route.settings.name});
    // Handle push event
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    analyticsService.logEvent('didPop', {'route': route.settings.name});
    // Handle pop event
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    analyticsService.logEvent('didRemove', {'route': route.settings.name});
    // Handle remove event
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    analyticsService.logEvent('didReplace', {'newRoute': newRoute?.settings.name, 'oldRoute': oldRoute?.settings.name});
    // Handle replace event
  }
}
