import 'package:equatable/equatable.dart';

import 'models.dart';

class History extends Equatable {
  final Job job;
  final bool isCompleted;

  const History({required this.job, this.isCompleted = true});
  static var test = "test";

  static List<History> histories = [
    History(job: Job.jobs[0]),
    History(
      job: Job.jobs[1],
    ),
    History(
      job: Job.jobs[2],
    ),
  ];

  @override
  List<Object?> get props => [
        job,
        isCompleted,
      ];
}
