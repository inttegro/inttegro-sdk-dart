/// Financial accounts, institutions, owners, and account request models.
///
/// Import this library as `financial_account` alongside
/// `package:inttegro/inttegro.dart`. The prefix supplies the resource context
/// for concise names such as `financial_account.CreateRequest` and
/// `financial_account.Type`.
library;

import 'src/serialization.dart';
import 'bank_account.dart' as inttegro_bank_account;
import 'inttegro.dart' as core;
import 'product.dart' as inttegro_product;
import 'wallet.dart' as inttegro_wallet;

part 'src/financial_account/address.dart';
part 'src/financial_account/bank.dart';
part 'src/financial_account/bank_account_details.dart';
part 'src/financial_account/bank_create_request.dart';
part 'src/financial_account/bank_request.dart';
part 'src/financial_account/bank_request_pull_configuration.dart';
part 'src/financial_account/bank_request_push_configuration.dart';
part 'src/financial_account/create_request.dart';
part 'src/financial_account/disable_request.dart';
part 'src/financial_account/dosh_create_request.dart';
part 'src/financial_account/dosh_request.dart';
part 'src/financial_account/dosh_request_pull_configuration.dart';
part 'src/financial_account/dosh_request_push_configuration.dart';
part 'src/financial_account/enable_pull_request.dart';
part 'src/financial_account/financial_account.dart';
part 'src/financial_account/ghana_bank_account_details.dart';
part 'src/financial_account/id_request.dart';
part 'src/financial_account/institution.dart';
part 'src/financial_account/institution_bank.dart';
part 'src/financial_account/institution_bank_branch.dart';
part 'src/financial_account/institution_mobile_money_provider.dart';
part 'src/financial_account/mobile_money_wallet_details.dart';
part 'src/financial_account/owner.dart';
part 'src/financial_account/owner_input.dart';
part 'src/financial_account/owner_input_address.dart';
part 'src/financial_account/owner_update_input.dart';
part 'src/financial_account/owner_update_input_address.dart';
part 'src/financial_account/page.dart';
part 'src/financial_account/page_request.dart';
part 'src/financial_account/pull_configuration.dart';
part 'src/financial_account/pull_configuration_mandate.dart';
part 'src/financial_account/push_configuration.dart';
part 'src/financial_account/type.dart';
part 'src/financial_account/update_request.dart';
part 'src/financial_account/wallet.dart';
part 'src/financial_account/wallet_create_request.dart';
part 'src/financial_account/wallet_details.dart';
part 'src/financial_account/wallet_mobile_money.dart';
part 'src/financial_account/wallet_request.dart';
part 'src/financial_account/wallet_request_pull_configuration.dart';
part 'src/financial_account/wallet_request_push_configuration.dart';
