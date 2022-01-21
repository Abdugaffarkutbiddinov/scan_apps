import 'package:device_apps/device_apps.dart';
import 'package:equatable/equatable.dart';

class App extends Equatable {
  final String name;
  final String icon;
  final String installDate;
  App({required this.name, required this.icon, required this.installDate});

  @override
  // TODO: implement props
  List<Object?> get props => [name,icon,installDate];

}