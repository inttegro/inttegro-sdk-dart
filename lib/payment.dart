/// Payments, attempts, required next actions, and confirmation models.
///
/// Import this library as `payment` alongside `package:inttegro/inttegro.dart`.
/// The prefix supplies the resource context for concise names such as
/// `payment.Payment`, `payment.Status`, and `payment.ConfirmRequest`.
library;

import 'src/serialization.dart';
import 'balance_transaction.dart' as inttegro_balance_transaction;
import 'money.dart' as inttegro_money;
import 'order.dart' as inttegro_order;
import 'payment_method.dart' as inttegro_payment_method;
import 'payout.dart' as inttegro_payout;

part 'src/payment/attempt.dart';
part 'src/payment/attempt_error.dart';
part 'src/payment/attempt_status.dart';
part 'src/payment/billing_details.dart';
part 'src/payment/confirm_request.dart';
part 'src/payment/confirmation_channel.dart';
part 'src/payment/customer.dart';
part 'src/payment/error.dart';
part 'src/payment/next_action.dart';
part 'src/payment/next_action_authorize.dart';
part 'src/payment/next_action_confirm.dart';
part 'src/payment/next_action_confirm_attempt.dart';
part 'src/payment/next_action_confirm_request.dart';
part 'src/payment/next_action_redirect.dart';
part 'src/payment/next_action_redirect_latest_visit.dart';
part 'src/payment/next_action_request_confirmation.dart';
part 'src/payment/next_action_type.dart';
part 'src/payment/payment.dart';
part 'src/payment/result_status.dart';
part 'src/payment/status.dart';
