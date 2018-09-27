import 'package:dart_case_bot/collection.dart';
import 'package:dart_case_bot/cases/horizon/collection/mil_spec.dart';
import 'package:dart_case_bot/cases/horizon/collection/restricted.dart';
import 'package:dart_case_bot/cases/horizon/collection/classified.dart';
import 'package:dart_case_bot/cases/horizon/collection/covert.dart';
import 'package:dart_case_bot/cases/horizon/collection/knife.dart';

final CaseCollection collection = GenericCaseCollection(
    mil_spec: mil_spec,
    restricted: restricted,
    classified: classified,
    covert: covert,
    knife: knife);
