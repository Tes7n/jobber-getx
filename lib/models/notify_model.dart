import 'package:equatable/equatable.dart';

import 'models.dart';

class Notify extends Equatable {
  final Job job;
  final bool isFrequent;

  const Notify({required this.job, this.isFrequent = false});

  static List<Notify> notifies = [
    Notify(job: Job.jobs[0]),
    Notify(job: Job.jobs[1]),
  ];

  @override
  List<Object?> get props => [
        job,
        isFrequent,
      ];
}
