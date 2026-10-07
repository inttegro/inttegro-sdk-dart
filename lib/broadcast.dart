/// Broadcast requests, delivery details, and cancellation models.
///
/// Import this library as `broadcast` alongside `package:inttegro/inttegro.dart`.
library;

import 'src/serialization.dart';
import 'chime.dart' as inttegro_chime;
import 'message_template.dart' as inttegro_message_template;

part 'src/broadcast/cancel_detail.dart';
part 'src/broadcast/cancel_request.dart';
part 'src/broadcast/creation_detail.dart';
part 'src/broadcast/detail.dart';
part 'src/broadcast/error.dart';
part 'src/broadcast/lookup_request.dart';
part 'src/broadcast/message_template_reference.dart';
part 'src/broadcast/message_template_text.dart';
part 'src/broadcast/request.dart';
part 'src/broadcast/request_message_template.dart';
part 'src/broadcast/request_request_meta.dart';
