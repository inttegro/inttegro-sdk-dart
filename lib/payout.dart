/// Payouts, failures, destinations, schedules, and settings models.
///
/// Import this library as `payout` alongside `package:inttegro/inttegro.dart`.
library;

import 'src/serialization.dart';
import 'inttegro.dart' as core;
import 'money.dart' as inttegro_money;

part 'src/payout/balance_transaction.dart';
part 'src/payout/cancel_request.dart';
part 'src/payout/disable_automatic_request.dart';
part 'src/payout/enable_automatic_request.dart';
part 'src/payout/error.dart';
part 'src/payout/failure.dart';
part 'src/payout/failure_reason.dart';
part 'src/payout/get_settings_request.dart';
part 'src/payout/lookup_request.dart';
part 'src/payout/page.dart';
part 'src/payout/page_request.dart';
part 'src/payout/payment_configuration.dart';
part 'src/payout/payment_configuration_destination.dart';
part 'src/payout/payout.dart';
part 'src/payout/schedule_request.dart';
part 'src/payout/set_destinations_request.dart';
part 'src/payout/settings_lookup.dart';
part 'src/payout/settings_lookup_schedule.dart';
part 'src/payout/settings_lookup_schedule_aging_spec.dart';
part 'src/payout/settings_mutation.dart';
part 'src/payout/settings_mutation_schedule.dart';
part 'src/payout/settings_mutation_schedule_spec.dart';
part 'src/payout/status.dart';
