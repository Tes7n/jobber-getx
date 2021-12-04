import 'package:get/get.dart';
import 'package:jobber/models/models.dart';

class PostAdController extends GetxController {
  final List<Job> jobs = Job.jobs.obs;
  void postAdJob(String nameOYS, serviceA, fieldOW) {
    jobs.insert(
      0,
      Job(serviceArea: serviceA, fieldOfWork: fieldOW, serviceName: serviceA),
    );
  }
}
