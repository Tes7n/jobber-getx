import 'package:equatable/equatable.dart';

class Job extends Equatable {
  final String serviceArea;
  final String fieldOfWork;
  final String serviceName;

  Job(
      {required this.serviceArea,
      required this.fieldOfWork,
      required this.serviceName});

  static List<Job> jobs = [
    Job(
        serviceArea: "#1 Interior Carpet Designer",
        fieldOfWork: "Civil lines, Sagar",
        serviceName: "Badonia & Sons"),
    Job(
        serviceArea: "#2 Interior Carpet Designer",
        fieldOfWork: "Civil lines, Sagar",
        serviceName: "Badonia & Sons"),
    Job(
        serviceArea: "#3 Interior Carpet Designer",
        fieldOfWork: "Civil lines, Sagar",
        serviceName: "Badonia & Sons"),
  ];

  @override
  List<Object?> get props => [serviceArea, fieldOfWork, serviceName];
}
