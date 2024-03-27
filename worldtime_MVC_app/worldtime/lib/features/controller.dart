import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:worldtime/features/repsository.dart';
import 'package:worldtime/model/Tmodel.dart';

final ControllerProvider = ChangeNotifierProvider((ref) {
  final WorldTimeController worldTimeController = WorldTimeController();
  return worldTimeController.fetchRepo();
});

class WorldTimeController extends C {
  WorldTimeController() : super({} as TimeZoneInfo) {
    fetchRepo();
  }

  WroldTimeRepository wtI = WroldTimeRepository();

  Future<void> fetchRepo() async {
    state = (await wtI.fetchApi())!;
  }
}
