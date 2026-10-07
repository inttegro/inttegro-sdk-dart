/// Chime messages, recipients, schedules, and transmission models.
///
/// Import this library as `chime` alongside `package:inttegro/inttegro.dart`.
library;

import 'src/serialization.dart';
import 'inttegro.dart' as core;
import 'message_template.dart' as inttegro_message_template;
import 'shared.dart' as inttegro_shared;

part 'src/chime/cancel_schedule_request.dart';
part 'src/chime/chime.dart';
part 'src/chime/email_address_input.dart';
part 'src/chime/email_event.dart';
part 'src/chime/email_mailbox.dart';
part 'src/chime/email_mailbox_input.dart';
part 'src/chime/email_message.dart';
part 'src/chime/email_message_input.dart';
part 'src/chime/email_recipient.dart';
part 'src/chime/email_recipient_input.dart';
part 'src/chime/email_safety_result.dart';
part 'src/chime/email_scanned_link.dart';
part 'src/chime/email_schema_kind.dart';
part 'src/chime/email_schema_markup.dart';
part 'src/chime/inline_email_recipient.dart';
part 'src/chime/inline_phone_recipient.dart';
part 'src/chime/inline_recipient_input.dart';
part 'src/chime/lookup_request.dart';
part 'src/chime/lookup_schedule_request.dart';
part 'src/chime/page.dart';
part 'src/chime/page_request.dart';
part 'src/chime/phone_number_input.dart';
part 'src/chime/phone_recipient.dart';
part 'src/chime/phone_recipient_input.dart';
part 'src/chime/recipient.dart';
part 'src/chime/recipient_email.dart';
part 'src/chime/recipient_input.dart';
part 'src/chime/recipient_phone.dart';
part 'src/chime/recipient_type.dart';
part 'src/chime/saved_customer_recipient.dart';
part 'src/chime/saved_customer_recipient_input.dart';
part 'src/chime/schedule_cancel_detail.dart';
part 'src/chime/schedule_creation_detail.dart';
part 'src/chime/schedule_detail.dart';
part 'src/chime/schedule_error.dart';
part 'src/chime/schedule_request.dart';
part 'src/chime/schedule_request_request_meta.dart';
part 'src/chime/send_email_recipient.dart';
part 'src/chime/send_phone_recipient.dart';
part 'src/chime/send_request.dart';
part 'src/chime/send_request_recipient.dart';
part 'src/chime/send_request_request_meta.dart';
part 'src/chime/send_saved_customer_recipient.dart';
part 'src/chime/transmission.dart';
part 'src/chime/transport.dart';
