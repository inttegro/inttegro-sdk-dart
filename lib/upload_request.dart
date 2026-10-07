/// Upload requests, constraints, attempts, reviews, and fulfillment models.
///
/// Import this library as `upload_request` alongside
/// `package:inttegro/inttegro.dart`.
library;

import 'src/serialization.dart';
import 'inttegro.dart' as core;
import 'file.dart' as inttegro_file;

part 'src/upload_request/actor.dart';
part 'src/upload_request/attempt.dart';
part 'src/upload_request/attempts.dart';
part 'src/upload_request/attempts_request.dart';
part 'src/upload_request/cancel_request.dart';
part 'src/upload_request/constraints.dart';
part 'src/upload_request/constraints_input.dart';
part 'src/upload_request/create_request.dart';
part 'src/upload_request/display.dart';
part 'src/upload_request/display_input.dart';
part 'src/upload_request/latest_error.dart';
part 'src/upload_request/lookup_request.dart';
part 'src/upload_request/page.dart';
part 'src/upload_request/page_request.dart';
part 'src/upload_request/review.dart';
part 'src/upload_request/review_attempt_by_id_request.dart';
part 'src/upload_request/review_attempt_by_ordinal_request.dart';
part 'src/upload_request/review_attempt_request.dart';
part 'src/upload_request/review_by_id_request_variant.dart';
part 'src/upload_request/review_by_ordinal_request_variant.dart';
part 'src/upload_request/review_reason.dart';
part 'src/upload_request/review_reason_input.dart';
part 'src/upload_request/status.dart';
part 'src/upload_request/upload_fulfillment.dart';
part 'src/upload_request/upload_request.dart';
part 'src/upload_request/upload_review_decision.dart';
part 'src/upload_request/upload_review_type.dart';
