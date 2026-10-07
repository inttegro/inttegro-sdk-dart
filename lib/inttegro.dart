/// Client and SDK-wide types for server-side Inttegro integrations.
///
/// Import resource models from their dedicated public libraries and qualify
/// them with a resource-shaped prefix, for example:
///
/// ```dart
/// import 'package:inttegro/inttegro.dart' as inttegro;
/// import 'package:inttegro/financial_account.dart' as financial_account;
/// import 'package:inttegro/payment.dart' as payment;
/// ```
///
/// This library intentionally does not re-export resource models. Keeping the
/// boundaries explicit lets concise names such as `payment.Status` and
/// `financial_account.CreateRequest` remain unambiguous at call sites.
library;

import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

import 'src/serialization.dart';
import 'app.dart' as inttegro_app;
import 'balance.dart' as inttegro_balance;
import 'balance_transaction.dart' as inttegro_balance_transaction;
import 'broadcast.dart' as inttegro_broadcast;
import 'chime.dart' as inttegro_chime;
import 'country.dart' as inttegro_country;
import 'customer.dart' as inttegro_customer;
import 'file.dart' as inttegro_file;
import 'file_link.dart' as inttegro_file_link;
import 'financial_account.dart' as inttegro_financial_account;
import 'message_template.dart' as inttegro_message_template;
import 'money.dart' as inttegro_money;
import 'order.dart' as inttegro_order;
import 'otp.dart' as inttegro_otp;
import 'payment.dart' as inttegro_payment;
import 'payment_method.dart' as inttegro_payment_method;
import 'payout.dart' as inttegro_payout;
import 'price.dart' as inttegro_price;
import 'product.dart' as inttegro_product;
import 'purchase_intent.dart' as inttegro_purchase_intent;
import 'refund.dart' as inttegro_refund;
import 'secret_key.dart' as inttegro_secret_key;
import 'upload_request.dart' as inttegro_upload_request;

part 'src/balance_snapshot.dart';
part 'src/client.dart';
part 'src/resource_semantics.dart';
part 'src/resources.dart';
part 'src/search.dart';
part 'src/semantic_collections.dart';
