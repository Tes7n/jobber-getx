import 'package:get/get.dart';
import 'package:jobber/models/models.dart';
import 'package:jobber/models/notify_model.dart';

class HistoryController extends GetxController {
  final List<History> histories = History.histories.obs;
  final List<Notify> notifies = Notify.notifies.obs;

  void applyJob(Job job) {
    histories.insert(0, History(job: job, isCompleted: false));
    notifies.insert(0, Notify(job: job, isFrequent: true));
  }
}
