import 'package:hive/hive.dart';
part 'notemodel.g.dart';

@HiveType(typeId: 0)
// ignore: camel_case_types
class Notemodel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String data;
  @HiveField(3)
  final int color;

  Notemodel(
      {required this.title,
      required this.subTitle,
      required this.data,
      required this.color});
}
