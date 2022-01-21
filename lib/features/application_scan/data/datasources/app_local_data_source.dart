import 'package:device_apps/device_apps.dart';
import 'package:find_apps/features/application_scan/domain/entities/app.dart';

abstract class AppLocalDataSource {
  Future<List<App>> getAppList();
  Future<App> getAppDetails(String name);
}

class AppLocalDataSourceImpl implements AppLocalDataSource {
  @override
  Future<App> getAppDetails(String name) {
    // TODO: implement getAppDetails
    throw UnimplementedError();
  }

  @override
  Future<List<App>> getAppList() async{
      List<Application> apps = await DeviceApps.getInstalledApplications(onlyAppsWithLaunchIntent: true, includeAppIcons: true, includeSystemApps: true);
      return ;
  }

}