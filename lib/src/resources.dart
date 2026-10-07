part of '../inttegro.dart';

/// Operations for Inttegro apps.
final class Apps {
  final Client _client;
  const Apps._(this._client);

  /// Create an application
  Future<inttegro_app.Application> create(
    inttegro_app.CreateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/apps/create",
      request.toJson(),
      options,
      "apps.create",
      field: "app",
      authenticated: true,
    );
    return inttegro_app.Application.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Retrieve the authenticated application
  Future<inttegro_app.Application> lookup({
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/apps/lookup",
      const <String, Object?>{},
      options,
      "apps.lookup",
      field: "app",
      authenticated: true,
    );
    return inttegro_app.Application.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Update the authenticated application
  Future<inttegro_app.Application> update(
    inttegro_app.UpdateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/apps/update",
      request.toJson(),
      options,
      "apps.update",
      field: "app",
      authenticated: true,
    );
    return inttegro_app.Application.fromJson(
        (value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro balance transactions.
final class BalanceTransactions {
  final Client _client;
  const BalanceTransactions._(this._client);

  /// Look up a balance transaction
  Future<inttegro_balance_transaction.BalanceTransaction> lookup(
    inttegro_balance_transaction.LookupRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/balance_transactions/lookup",
      request.toJson(),
      options,
      "balance_transactions.lookup",
      field: "transaction",
      authenticated: true,
    );
    return inttegro_balance_transaction.BalanceTransaction.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Page through balance transactions
  Future<inttegro_balance_transaction.Page> page(
    inttegro_balance_transaction.PageRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/balance_transactions/page",
      request.toJson(),
      options,
      "balance_transactions.page",
      field: "page",
      authenticated: true,
    );
    return inttegro_balance_transaction.Page.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }
}

/// Operations for Inttegro balances.
final class Balances {
  final Client _client;
  const Balances._(this._client);

  /// Retrieve your balance
  Future<BalanceSnapshot> getValue({
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/balances",
      const <String, Object?>{},
      options,
      "balances.get",
      field: "balances",
      authenticated: true,
    );
    return BalanceSnapshot.fromJson(value);
  }
}

/// Operations for Inttegro broadcasts.
final class Broadcasts {
  final Client _client;
  const Broadcasts._(this._client);

  /// Look up a broadcast
  Future<inttegro_broadcast.Detail> lookup(
    inttegro_broadcast.LookupRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/broadcasts/lookup",
      request.toJson(),
      options,
      "broadcasts.lookup",
      field: "broadcast",
      authenticated: true,
    );
    return inttegro_broadcast.Detail.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Cancel a broadcast
  Future<inttegro_broadcast.Detail> cancel(
    inttegro_broadcast.CancelRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/broadcasts/cancel",
      request.toJson(),
      options,
      "broadcasts.cancel",
      field: "broadcast",
      authenticated: true,
    );
    return inttegro_broadcast.Detail.fromJson(
        (value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro chimes.
final class Chimes {
  final Client _client;
  const Chimes._(this._client);

  /// Send a Chime
  Future<inttegro_chime.Chime> send(
    inttegro_chime.SendRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/chimes/send",
      request.toJson(),
      options,
      "chimes.send",
      field: "chime",
      authenticated: true,
    );
    return inttegro_chime.Chime.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Look up a Chime
  Future<inttegro_chime.Chime> lookup(
    inttegro_chime.LookupRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/chimes/lookup",
      request.toJson(),
      options,
      "chimes.lookup",
      field: "chime",
      authenticated: true,
    );
    return inttegro_chime.Chime.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Page through Chimes
  Future<inttegro_chime.Page> page(
    inttegro_chime.PageRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/chimes/page",
      request.toJson(),
      options,
      "chimes.page",
      field: "page",
      authenticated: true,
    );
    return inttegro_chime.Page.fromJson((value as Map).cast<String, Object?>());
  }

  /// Schedule Chimes
  Future<inttegro_chime.ScheduleCreationDetail> schedule(
    inttegro_chime.ScheduleRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/chimes/schedule",
      request.toJson(),
      options,
      "chimes.schedule",
      field: "scheduled_chime",
      authenticated: true,
    );
    return inttegro_chime.ScheduleCreationDetail.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }

  /// Broadcast Chimes
  Future<inttegro_broadcast.CreationDetail> broadcast(
    inttegro_broadcast.Request request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/chimes/broadcast",
      request.toJson(),
      options,
      "chimes.broadcast",
      field: "broadcast",
      authenticated: true,
    );
    return inttegro_broadcast.CreationDetail.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }
}

/// Operations for Inttegro customers.
final class Customers {
  final Client _client;
  const Customers._(this._client);

  /// Create a customer
  Future<inttegro_customer.Customer> create(
    inttegro_customer.CreateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/customers/create",
      request.toJson(),
      options,
      "customers.create",
      field: "customer",
      authenticated: true,
    );
    return inttegro_customer.Customer.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Look up a customer
  Future<inttegro_customer.Customer> lookup(
    inttegro_customer.LookupRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/customers/lookup",
      request.toJson(),
      options,
      "customers.lookup",
      field: "customer",
      authenticated: true,
    );
    return inttegro_customer.Customer.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Update a customer
  Future<inttegro_customer.Customer> update(
    inttegro_customer.UpdateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/customers/update",
      request.toJson(),
      options,
      "customers.update",
      field: "customer",
      authenticated: true,
    );
    return inttegro_customer.Customer.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Page through customers
  Future<inttegro_customer.Page> page(
    inttegro_customer.PageRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/customers/page",
      request.toJson(),
      options,
      "customers.page",
      field: "page",
      authenticated: true,
    );
    return inttegro_customer.Page.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Search customer profiles.
  Future<ResourceSearchPage> search(
    ResourceSearchRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/customers/search",
      request.toJson(),
      options,
      "customers.search",
      field: "search",
      authenticated: true,
    );
    return ResourceSearchPage.fromJson((value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro file links.
final class FileLinks {
  final Client _client;
  const FileLinks._(this._client);

  /// Create a file link
  Future<inttegro_file_link.Creation> create(
    inttegro_file_link.CreateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/file_links/create",
      request.toJson(),
      options,
      "file_links.create",
      field: null,
      authenticated: true,
    );
    return inttegro_file_link.Creation.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Lookup a file link
  Future<inttegro_file_link.FileLink> lookup(
    inttegro_file_link.LookupRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/file_links/lookup",
      request.toJson(),
      options,
      "file_links.lookup",
      field: "file_link",
      authenticated: true,
    );
    return inttegro_file_link.FileLink.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Page file links
  Future<inttegro_file_link.Page> page(
    inttegro_file_link.PageRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/file_links/page",
      request.toJson(),
      options,
      "file_links.page",
      field: "page",
      authenticated: true,
    );
    return inttegro_file_link.Page.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Revoke a file link
  Future<inttegro_file_link.FileLink> revoke(
    inttegro_file_link.RevokeRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/file_links/revoke",
      request.toJson(),
      options,
      "file_links.revoke",
      field: "file_link",
      authenticated: true,
    );
    return inttegro_file_link.FileLink.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Open a public file link
  Future<FileDownload> open(OpenFileLinkRequest request) =>
      _client._openFileLink("/file_links/open", request, "file_links.open");
}

/// Operations for Inttegro file references.
final class FileReferences {
  final Client _client;
  const FileReferences._(this._client);

  /// Reconcile file references
  Future<inttegro_file.ReferenceReconciliation> reconcile(
    inttegro_file.ReferenceReconcileRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/file_references/reconcile",
      request.toJson(),
      options,
      "file_references.reconcile",
      field: null,
      authenticated: true,
    );
    return inttegro_file.ReferenceReconciliation.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }
}

/// Operations for Inttegro files.
final class Files {
  final Client _client;
  const Files._(this._client);

  /// Create a file
  Future<inttegro_file.File> create(
    CreateFileRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._uploadFile(
      "/files/create",
      request,
      options,
      "files.create",
      field: 'file',
    );
    return inttegro_file.File.fromJson((value as Map).cast<String, Object?>());
  }

  /// Lookup a file
  Future<inttegro_file.File> lookup(
    inttegro_file.LookupRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/files/lookup",
      request.toJson(),
      options,
      "files.lookup",
      field: "file",
      authenticated: true,
    );
    return inttegro_file.File.fromJson((value as Map).cast<String, Object?>());
  }

  /// Page files
  Future<inttegro_file.Page> page(
    inttegro_file.PageRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/files/page",
      request.toJson(),
      options,
      "files.page",
      field: "page",
      authenticated: true,
    );
    return inttegro_file.Page.fromJson((value as Map).cast<String, Object?>());
  }

  /// Deliver file contents
  Future<FileDownload> contents(
    inttegro_file.ContentsRequest request, {
    RequestOptions options = const RequestOptions(),
  }) =>
      _client._download(
        "POST",
        "/files/contents",
        request.toJson(),
        options,
        "files.contents",
        authenticated: true,
      );

  /// Delete a file
  Future<inttegro_file.File> delete(
    inttegro_file.DeleteRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/files/delete",
      request.toJson(),
      options,
      "files.delete",
      field: "file",
      authenticated: true,
    );
    return inttegro_file.File.fromJson((value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro financial accounts.
final class FinancialAccounts {
  final Client _client;
  const FinancialAccounts._(this._client);

  /// Create a financial account
  Future<inttegro_financial_account.FinancialAccount> create(
    inttegro_financial_account.CreateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/financial_accounts/create",
      request.toJson(),
      options,
      "financial_accounts.create",
      field: "account",
      authenticated: true,
    );
    return inttegro_financial_account.FinancialAccount.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Lookup a financial account
  Future<inttegro_financial_account.FinancialAccount> lookup(
    inttegro_financial_account.IDRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/financial_accounts/lookup",
      request.toJson(),
      options,
      "financial_accounts.lookup",
      field: "account",
      authenticated: true,
    );
    return inttegro_financial_account.FinancialAccount.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Page through financial accounts
  Future<inttegro_financial_account.Page> page(
    inttegro_financial_account.PageRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/financial_accounts/page",
      request.toJson(),
      options,
      "financial_accounts.page",
      field: "page",
      authenticated: true,
    );
    return inttegro_financial_account.Page.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }

  /// Search financial accounts.
  Future<ResourceSearchPage> search(
    ResourceSearchRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/financial_accounts/search",
      request.toJson(),
      options,
      "financial_accounts.search",
      field: "search",
      authenticated: true,
    );
    return ResourceSearchPage.fromJson((value as Map).cast<String, Object?>());
  }

  /// Connect a financial account
  Future<inttegro_financial_account.FinancialAccount> connect(
    inttegro_financial_account.CreateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/financial_accounts/connect",
      request.toJson(),
      options,
      "financial_accounts.connect",
      field: "account",
      authenticated: true,
    );
    return inttegro_financial_account.FinancialAccount.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Update a financial account
  Future<inttegro_financial_account.FinancialAccount> update(
    inttegro_financial_account.UpdateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/financial_accounts/update",
      request.toJson(),
      options,
      "financial_accounts.update",
      field: "account",
      authenticated: true,
    );
    return inttegro_financial_account.FinancialAccount.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Enable push capability
  Future<inttegro_financial_account.FinancialAccount> enablePush(
    inttegro_financial_account.IDRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/financial_accounts/enable_push",
      request.toJson(),
      options,
      "financial_accounts.enable_push",
      field: "account",
      authenticated: true,
    );
    return inttegro_financial_account.FinancialAccount.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Disable push capability
  Future<inttegro_financial_account.FinancialAccount> disablePush(
    inttegro_financial_account.DisableRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/financial_accounts/disable_push",
      request.toJson(),
      options,
      "financial_accounts.disable_push",
      field: "account",
      authenticated: true,
    );
    return inttegro_financial_account.FinancialAccount.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Disconnect a financial account
  Future<inttegro_financial_account.FinancialAccount> disconnect(
    inttegro_financial_account.DisableRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/financial_accounts/disconnect",
      request.toJson(),
      options,
      "financial_accounts.disconnect",
      field: "account",
      authenticated: true,
    );
    return inttegro_financial_account.FinancialAccount.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Reconnect a financial account
  Future<inttegro_financial_account.FinancialAccount> reconnect(
    inttegro_financial_account.IDRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/financial_accounts/reconnect",
      request.toJson(),
      options,
      "financial_accounts.reconnect",
      field: "account",
      authenticated: true,
    );
    return inttegro_financial_account.FinancialAccount.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Enable pull capability
  Future<inttegro_financial_account.FinancialAccount> enablePull(
    inttegro_financial_account.EnablePullRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/financial_accounts/enable_pull",
      request.toJson(),
      options,
      "financial_accounts.enable_pull",
      field: "account",
      authenticated: true,
    );
    return inttegro_financial_account.FinancialAccount.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Disable pull capability
  Future<inttegro_financial_account.FinancialAccount> disablePull(
    inttegro_financial_account.IDRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/financial_accounts/disable_pull",
      request.toJson(),
      options,
      "financial_accounts.disable_pull",
      field: "account",
      authenticated: true,
    );
    return inttegro_financial_account.FinancialAccount.fromJson(
        (value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro keys.
final class Keys {
  final Client _client;
  const Keys._(this._client);

  /// Generate a secret key
  Future<inttegro_secret_key.Generated> generate(
    inttegro_secret_key.GenerateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/keys/generate",
      request.toJson(),
      options,
      "keys.generate",
      field: "key",
      authenticated: true,
    );
    return inttegro_secret_key.Generated.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Page secret keys
  Future<inttegro_secret_key.Page> page(
    inttegro_secret_key.PageRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/keys/page",
      request.toJson(),
      options,
      "keys.page",
      field: "page",
      authenticated: true,
    );
    return inttegro_secret_key.Page.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Retrieve a secret key
  Future<inttegro_secret_key.SecretKey> lookup(
    inttegro_secret_key.LookupRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/keys/lookup",
      request.toJson(),
      options,
      "keys.lookup",
      field: "key",
      authenticated: true,
    );
    return inttegro_secret_key.SecretKey.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Update a secret key
  Future<inttegro_secret_key.SecretKey> update(
    inttegro_secret_key.UpdateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/keys/update",
      request.toJson(),
      options,
      "keys.update",
      field: "key",
      authenticated: true,
    );
    return inttegro_secret_key.SecretKey.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Revoke a secret key
  Future<inttegro_secret_key.SecretKey> destroy(
    inttegro_secret_key.DestroyRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/keys/destroy",
      request.toJson(),
      options,
      "keys.destroy",
      field: "key",
      authenticated: true,
    );
    return inttegro_secret_key.SecretKey.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Retrieve secret key usage
  Future<inttegro_secret_key.Usage> usage(
    inttegro_secret_key.UsageRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/keys/usage",
      request.toJson(),
      options,
      "keys.usage",
      field: null,
      authenticated: true,
    );
    return inttegro_secret_key.Usage.fromJson(
        (value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro message templates.
final class MessageTemplates {
  final Client _client;
  const MessageTemplates._(this._client);

  /// Create a message template
  Future<inttegro_message_template.MessageTemplate> create(
    inttegro_message_template.CreateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/message_templates/create",
      request.toJson(),
      options,
      "message_templates.create",
      field: "message_template",
      authenticated: true,
    );
    return inttegro_message_template.MessageTemplate.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Update a message template
  Future<inttegro_message_template.MessageTemplate> update(
    inttegro_message_template.UpdateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/message_templates/update",
      request.toJson(),
      options,
      "message_templates.update",
      field: "message_template",
      authenticated: true,
    );
    return inttegro_message_template.MessageTemplate.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Publish a message template
  Future<inttegro_message_template.MessageTemplate> publish(
    inttegro_message_template.IDRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/message_templates/publish",
      request.toJson(),
      options,
      "message_templates.publish",
      field: "message_template",
      authenticated: true,
    );
    return inttegro_message_template.MessageTemplate.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Archive a message template
  Future<inttegro_message_template.MessageTemplate> archive(
    inttegro_message_template.IDRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/message_templates/archive",
      request.toJson(),
      options,
      "message_templates.archive",
      field: "message_template",
      authenticated: true,
    );
    return inttegro_message_template.MessageTemplate.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Look up a message template
  Future<inttegro_message_template.MessageTemplate> lookup(
    inttegro_message_template.IDRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/message_templates/lookup",
      request.toJson(),
      options,
      "message_templates.lookup",
      field: "message_template",
      authenticated: true,
    );
    return inttegro_message_template.MessageTemplate.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Page message templates
  Future<inttegro_message_template.Page> page(
    inttegro_message_template.PageRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/message_templates/page",
      request.toJson(),
      options,
      "message_templates.page",
      field: "page",
      authenticated: true,
    );
    return inttegro_message_template.Page.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }

  /// Render a message template preview
  Future<inttegro_message_template.Preview> renderPreview(
    inttegro_message_template.RenderPreviewRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/message_templates/render_preview",
      request.toJson(),
      options,
      "message_templates.render_preview",
      field: null,
      authenticated: true,
    );
    return inttegro_message_template.Preview.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }
}

/// Operations for Inttegro orders.
final class Orders {
  final Client _client;
  const Orders._(this._client);

  /// Create a new order
  Future<inttegro_order.Order> create(
    inttegro_order.CreateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/orders/create",
      request.toJson(),
      options,
      "orders.create",
      field: "order",
      authenticated: true,
    );
    return inttegro_order.Order.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Lookup an order
  Future<inttegro_order.Order> lookup(
    inttegro_order.LookupRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/orders/lookup",
      request.toJson(),
      options,
      "orders.lookup",
      field: "order",
      authenticated: true,
    );
    return inttegro_order.Order.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Update an order
  Future<inttegro_order.Order> update(
    inttegro_order.UpdateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/orders/update",
      request.toJson(),
      options,
      "orders.update",
      field: "order",
      authenticated: true,
    );
    return inttegro_order.Order.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Pay for an order
  Future<inttegro_order.Order> pay(
    inttegro_order.PayRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/orders/pay",
      request.toJson(),
      options,
      "orders.pay",
      field: "order",
      authenticated: true,
    );
    return inttegro_order.Order.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Confirm payment with token
  Future<inttegro_order.Order> confirmPayment(
    inttegro_payment.ConfirmRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/orders/confirm_payment",
      request.toJson(),
      options,
      "orders.confirm_payment",
      field: "order",
      authenticated: true,
    );
    return inttegro_order.Order.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Request payment confirmation
  Future<inttegro_order.Order> requestConfirmation(
    inttegro_order.RequestConfirmationRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/orders/request_confirmation",
      request.toJson(),
      options,
      "orders.request_confirmation",
      field: "order",
      authenticated: true,
    );
    return inttegro_order.Order.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Cancel an order
  Future<inttegro_order.Order> cancel(
    inttegro_order.CancelRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/orders/cancel",
      request.toJson(),
      options,
      "orders.cancel",
      field: "order",
      authenticated: true,
    );
    return inttegro_order.Order.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Finalize an order
  Future<inttegro_order.Order> finalize(
    inttegro_order.FinalizeRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/orders/finalize",
      request.toJson(),
      options,
      "orders.finalize",
      field: "order",
      authenticated: true,
    );
    return inttegro_order.Order.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Complete an order
  Future<inttegro_order.Order> complete(
    inttegro_order.CompleteRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/orders/complete",
      request.toJson(),
      options,
      "orders.complete",
      field: "order",
      authenticated: true,
    );
    return inttegro_order.Order.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Send an order invoice
  Future<inttegro_order.DocumentDeliveryResult> sendInvoice(
    inttegro_order.DocumentDeliveryRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/orders/send_invoice",
      request.toJson(),
      options,
      "orders.send_invoice",
      field: null,
      authenticated: true,
    );
    return inttegro_order.DocumentDeliveryResult.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }

  /// Send an order receipt
  Future<inttegro_order.DocumentDeliveryResult> sendReceipt(
    inttegro_order.DocumentDeliveryRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/orders/send_receipt",
      request.toJson(),
      options,
      "orders.send_receipt",
      field: null,
      authenticated: true,
    );
    return inttegro_order.DocumentDeliveryResult.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }

  /// Page through orders
  Future<inttegro_order.Page> page(
    inttegro_order.PageRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/orders/page",
      request.toJson(),
      options,
      "orders.page",
      field: "page",
      authenticated: true,
    );
    return inttegro_order.Page.fromJson((value as Map).cast<String, Object?>());
  }

  /// Search orders.
  Future<ResourceSearchPage> search(
    ResourceSearchRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/orders/search",
      request.toJson(),
      options,
      "orders.search",
      field: "search",
      authenticated: true,
    );
    return ResourceSearchPage.fromJson((value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro otp.
final class Otp {
  final Client _client;
  const Otp._(this._client);

  /// Initiate OTP transaction
  Future<inttegro_otp.Transaction> initiate(
    inttegro_otp.InitiateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/otp/initiate",
      request.toJson(),
      options,
      "otp.initiate",
      field: "transaction",
      authenticated: true,
    );
    return inttegro_otp.Transaction.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Verify OTP token
  Future<inttegro_otp.Verification> verify(
    inttegro_otp.VerifyRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/otp/verify",
      request.toJson(),
      options,
      "otp.verify",
      field: null,
      authenticated: true,
    );
    return inttegro_otp.Verification.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Lookup OTP transaction
  Future<inttegro_otp.Transaction> lookup(
    inttegro_otp.LookupRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/otp/lookup",
      request.toJson(),
      options,
      "otp.lookup",
      field: "transaction",
      authenticated: true,
    );
    return inttegro_otp.Transaction.fromJson(
        (value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro payment methods.
final class PaymentMethods {
  final Client _client;
  const PaymentMethods._(this._client);

  /// Tokenize a payment method
  Future<inttegro_payment_method.PaymentMethod> tokenize(
    inttegro_payment_method.TokenizeMobileMoneyRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payment_methods/tokenize",
      request.toJson(),
      options,
      "payment_methods.tokenize",
      field: "payment_method",
      authenticated: true,
    );
    return inttegro_payment_method.PaymentMethod.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Lookup a payment method
  Future<inttegro_payment_method.PaymentMethod> lookup(
    inttegro_payment_method.LookupRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payment_methods/lookup",
      request.toJson(),
      options,
      "payment_methods.lookup",
      field: "payment_method",
      authenticated: true,
    );
    return inttegro_payment_method.PaymentMethod.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Page payment methods
  Future<inttegro_payment_method.Page> page(
    inttegro_payment_method.PageRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payment_methods/page",
      request.toJson(),
      options,
      "payment_methods.page",
      field: "page",
      authenticated: true,
    );
    return inttegro_payment_method.Page.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Update a payment method
  Future<inttegro_payment_method.PaymentMethod> update(
    inttegro_payment_method.UpdateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payment_methods/update",
      request.toJson(),
      options,
      "payment_methods.update",
      field: "payment_method",
      authenticated: true,
    );
    return inttegro_payment_method.PaymentMethod.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Activate a payment method
  Future<inttegro_payment_method.PaymentMethod> activate(
    inttegro_payment_method.ActivateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payment_methods/activate",
      request.toJson(),
      options,
      "payment_methods.activate",
      field: "payment_method",
      authenticated: true,
    );
    return inttegro_payment_method.PaymentMethod.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Deactivate a payment method
  Future<inttegro_payment_method.PaymentMethod> deactivate(
    inttegro_payment_method.DisactivateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payment_methods/disactivate",
      request.toJson(),
      options,
      "payment_methods.deactivate",
      field: "payment_method",
      authenticated: true,
    );
    return inttegro_payment_method.PaymentMethod.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Archive a payment method
  Future<inttegro_payment_method.PaymentMethod> archive(
    inttegro_payment_method.ArchiveRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payment_methods/archive",
      request.toJson(),
      options,
      "payment_methods.archive",
      field: "payment_method",
      authenticated: true,
    );
    return inttegro_payment_method.PaymentMethod.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Unarchive a payment method
  Future<inttegro_payment_method.PaymentMethod> unarchive(
    inttegro_payment_method.UnarchiveRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payment_methods/unarchive",
      request.toJson(),
      options,
      "payment_methods.unarchive",
      field: "payment_method",
      authenticated: true,
    );
    return inttegro_payment_method.PaymentMethod.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Get payment method settings
  Future<inttegro_payment_method.Settings> settings({
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payment_methods/settings",
      const <String, Object?>{},
      options,
      "payment_methods.settings",
      field: "settings",
      authenticated: true,
    );
    return inttegro_payment_method.Settings.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }
}

/// Operations for Inttegro payouts.
final class Payouts {
  final Client _client;
  const Payouts._(this._client);

  /// Schedule a payout
  Future<inttegro_payout.Payout> schedule(
    inttegro_payout.ScheduleRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payouts/schedule",
      request.toJson(),
      options,
      "payouts.schedule",
      field: "payout",
      authenticated: true,
    );
    return inttegro_payout.Payout.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Lookup a payout
  Future<inttegro_payout.Payout> lookup(
    inttegro_payout.LookupRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payouts/lookup",
      request.toJson(),
      options,
      "payouts.lookup",
      field: "payout",
      authenticated: true,
    );
    return inttegro_payout.Payout.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Set payout destinations
  Future<inttegro_payout.SettingsMutation> setDestinations(
    inttegro_payout.SetDestinationsRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payouts/set_destinations",
      request.toJson(),
      options,
      "payouts.set_destinations",
      field: "settings",
      authenticated: true,
    );
    return inttegro_payout.SettingsMutation.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }

  /// Get payout settings
  Future<inttegro_payout.SettingsLookup> settings({
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payouts/settings",
      const <String, Object?>{},
      options,
      "payouts.settings",
      field: "settings",
      authenticated: true,
    );
    return inttegro_payout.SettingsLookup.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }

  /// Disable automatic payouts
  Future<inttegro_payout.SettingsMutation> disable({
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payouts/disable",
      const <String, Object?>{},
      options,
      "payouts.disable",
      field: "settings",
      authenticated: true,
    );
    return inttegro_payout.SettingsMutation.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }

  /// Enable automatic payouts
  Future<inttegro_payout.SettingsMutation> enable({
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payouts/enable",
      const <String, Object?>{},
      options,
      "payouts.enable",
      field: "settings",
      authenticated: true,
    );
    return inttegro_payout.SettingsMutation.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }

  /// Page through payouts
  Future<inttegro_payout.Page> page(
    inttegro_payout.PageRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payouts/page",
      request.toJson(),
      options,
      "payouts.page",
      field: "page",
      authenticated: true,
    );
    return inttegro_payout.Page.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Search payouts.
  Future<ResourceSearchPage> search(
    ResourceSearchRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payouts/search",
      request.toJson(),
      options,
      "payouts.search",
      field: "search",
      authenticated: true,
    );
    return ResourceSearchPage.fromJson((value as Map).cast<String, Object?>());
  }

  /// Cancel a scheduled payout
  Future<inttegro_payout.Payout> cancel(
    inttegro_payout.CancelRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/payouts/cancel",
      request.toJson(),
      options,
      "payouts.cancel",
      field: "payout",
      authenticated: true,
    );
    return inttegro_payout.Payout.fromJson(
        (value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro prices.
final class Prices {
  final Client _client;
  const Prices._(this._client);

  /// Create a price
  Future<inttegro_price.Catalog> create(
    inttegro_price.CatalogParams request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/prices/create",
      request.toJson(),
      options,
      "prices.create",
      field: "price",
      authenticated: true,
    );
    return inttegro_price.Catalog.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Lookup a price
  Future<inttegro_price.Catalog> lookup(
    inttegro_price.LookupRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/prices/lookup",
      request.toJson(),
      options,
      "prices.lookup",
      field: "price",
      authenticated: true,
    );
    return inttegro_price.Catalog.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Page through prices
  Future<inttegro_price.Page> page(
    inttegro_price.PageRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/prices/page",
      request.toJson(),
      options,
      "prices.page",
      field: "page",
      authenticated: true,
    );
    return inttegro_price.Page.fromJson((value as Map).cast<String, Object?>());
  }

  /// Update a price
  Future<inttegro_price.Catalog> update(
    inttegro_price.UpdateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/prices/update",
      request.toJson(),
      options,
      "prices.update",
      field: "price",
      authenticated: true,
    );
    return inttegro_price.Catalog.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Activate a price
  Future<inttegro_price.Catalog> activate(
    inttegro_price.ActionRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/prices/activate",
      request.toJson(),
      options,
      "prices.activate",
      field: "price",
      authenticated: true,
    );
    return inttegro_price.Catalog.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Deactivate a price
  Future<inttegro_price.Catalog> deactivate(
    inttegro_price.ActionRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/prices/deactivate",
      request.toJson(),
      options,
      "prices.deactivate",
      field: "price",
      authenticated: true,
    );
    return inttegro_price.Catalog.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Archive a price
  Future<inttegro_price.Catalog> archive(
    inttegro_price.ActionRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/prices/archive",
      request.toJson(),
      options,
      "prices.archive",
      field: "price",
      authenticated: true,
    );
    return inttegro_price.Catalog.fromJson(
        (value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro products.
final class Products {
  final Client _client;
  const Products._(this._client);

  /// Create a product
  Future<inttegro_product.Product> create(
    inttegro_product.CreateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/products/create",
      request.toJson(),
      options,
      "products.create",
      field: "product",
      authenticated: true,
    );
    return inttegro_product.Product.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Add a price to a product
  Future<inttegro_price.Catalog> addPrice(
    inttegro_product.AddPriceRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/products/add_price",
      request.toJson(),
      options,
      "products.add_price",
      field: "price",
      authenticated: true,
    );
    return inttegro_price.Catalog.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Lookup a product
  Future<inttegro_product.Product> lookup(
    inttegro_product.LookupRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/products/lookup",
      request.toJson(),
      options,
      "products.lookup",
      field: "product",
      authenticated: true,
    );
    return inttegro_product.Product.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Update a product
  Future<inttegro_product.Product> update(
    inttegro_product.UpdateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/products/update",
      request.toJson(),
      options,
      "products.update",
      field: "product",
      authenticated: true,
    );
    return inttegro_product.Product.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Publish a product
  Future<inttegro_product.Product> publish(
    inttegro_product.ActionRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/products/publish",
      request.toJson(),
      options,
      "products.publish",
      field: "product",
      authenticated: true,
    );
    return inttegro_product.Product.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Unpublish a product
  Future<inttegro_product.Product> unpublish(
    inttegro_product.ActionRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/products/unpublish",
      request.toJson(),
      options,
      "products.unpublish",
      field: "product",
      authenticated: true,
    );
    return inttegro_product.Product.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Archive a product
  Future<inttegro_product.Product> archive(
    inttegro_product.ActionRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/products/archive",
      request.toJson(),
      options,
      "products.archive",
      field: "product",
      authenticated: true,
    );
    return inttegro_product.Product.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Page through products
  Future<inttegro_product.Page> page(
    inttegro_product.PageRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/products/page",
      request.toJson(),
      options,
      "products.page",
      field: "page",
      authenticated: true,
    );
    return inttegro_product.Page.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Search products.
  Future<ResourceSearchPage> search(
    ResourceSearchRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/products/search",
      request.toJson(),
      options,
      "products.search",
      field: "search",
      authenticated: true,
    );
    return ResourceSearchPage.fromJson((value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro purchase intents.
final class PurchaseIntents {
  final Client _client;
  const PurchaseIntents._(this._client);

  /// Create a purchase intent
  Future<inttegro_purchase_intent.PurchaseIntent> create(
    inttegro_purchase_intent.CreateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/purchase_intents/create",
      request.toJson(),
      options,
      "purchase_intents.create",
      field: "purchase_intent",
      authenticated: true,
    );
    return inttegro_purchase_intent.PurchaseIntent.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Update a purchase intent
  Future<inttegro_purchase_intent.PurchaseIntent> update(
    inttegro_purchase_intent.UpdateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/purchase_intents/update",
      request.toJson(),
      options,
      "purchase_intents.update",
      field: "purchase_intent",
      authenticated: true,
    );
    return inttegro_purchase_intent.PurchaseIntent.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Cancel a purchase intent
  Future<inttegro_purchase_intent.PurchaseIntent> cancel(
    inttegro_purchase_intent.CancelRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/purchase_intents/cancel",
      request.toJson(),
      options,
      "purchase_intents.cancel",
      field: "purchase_intent",
      authenticated: true,
    );
    return inttegro_purchase_intent.PurchaseIntent.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Lookup a purchase intent
  Future<inttegro_purchase_intent.PurchaseIntent> lookup(
    inttegro_purchase_intent.LookupRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/purchase_intents/lookup",
      request.toJson(),
      options,
      "purchase_intents.lookup",
      field: "purchase_intent",
      authenticated: true,
    );
    return inttegro_purchase_intent.PurchaseIntent.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// List purchase intents
  Future<inttegro_purchase_intent.Page> page(
    inttegro_purchase_intent.PageRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/purchase_intents/page",
      request.toJson(),
      options,
      "purchase_intents.page",
      field: "page",
      authenticated: true,
    );
    return inttegro_purchase_intent.Page.fromJson(
        (value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro refunds.
final class Refunds {
  final Client _client;
  const Refunds._(this._client);

  /// Create a refund
  Future<inttegro_refund.Refund> create(
    inttegro_refund.CreateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/refunds/create",
      request.toJson(),
      options,
      "refunds.create",
      field: "refund",
      authenticated: true,
    );
    return inttegro_refund.Refund.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Cancel a refund
  Future<inttegro_refund.Refund> cancel(
    inttegro_refund.CancelRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/refunds/cancel",
      request.toJson(),
      options,
      "refunds.cancel",
      field: "refund",
      authenticated: true,
    );
    return inttegro_refund.Refund.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Look up a refund
  Future<inttegro_refund.Refund> lookup(
    inttegro_refund.LookupRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/refunds/lookup",
      request.toJson(),
      options,
      "refunds.lookup",
      field: "refund",
      authenticated: true,
    );
    return inttegro_refund.Refund.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Page through refunds
  Future<inttegro_refund.Page> page(
    inttegro_refund.PageRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/refunds/page",
      request.toJson(),
      options,
      "refunds.page",
      field: "page",
      authenticated: true,
    );
    return inttegro_refund.Page.fromJson(
        (value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro schedules.
final class Schedules {
  final Client _client;
  const Schedules._(this._client);

  /// Look up a scheduled Chime
  Future<inttegro_chime.ScheduleDetail> lookup(
    inttegro_chime.LookupScheduleRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/schedules/lookup",
      request.toJson(),
      options,
      "schedules.lookup",
      field: "scheduled_chime",
      authenticated: true,
    );
    return inttegro_chime.ScheduleDetail.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Cancel a scheduled Chime
  Future<inttegro_chime.ScheduleCancelDetail> cancel(
    inttegro_chime.CancelScheduleRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/schedules/cancel",
      request.toJson(),
      options,
      "schedules.cancel",
      field: "scheduled_chime",
      authenticated: true,
    );
    return inttegro_chime.ScheduleCancelDetail.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }
}

/// Operations for Inttegro specifications.
final class Specifications {
  final Client _client;
  const Specifications._(this._client);

  /// Get country specifications
  Future<CountrySpecifications> countries({
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/spec/countries",
      const <String, Object?>{},
      options,
      "specifications.countries",
      field: "countries",
      authenticated: false,
    );
    return CountrySpecifications.fromJson(value);
  }
}

/// Operations for Inttegro upload requests.
final class UploadRequests {
  final Client _client;
  const UploadRequests._(this._client);

  /// Create an upload request
  Future<inttegro_upload_request.UploadRequest> create(
    inttegro_upload_request.CreateRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/upload_requests/create",
      request.toJson(),
      options,
      "upload_requests.create",
      field: "upload_request",
      authenticated: true,
    );
    return inttegro_upload_request.UploadRequest.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Lookup an upload request
  Future<inttegro_upload_request.UploadRequest> lookup(
    inttegro_upload_request.LookupRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/upload_requests/lookup",
      request.toJson(),
      options,
      "upload_requests.lookup",
      field: "upload_request",
      authenticated: true,
    );
    return inttegro_upload_request.UploadRequest.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Page upload requests
  Future<inttegro_upload_request.Page> page(
    inttegro_upload_request.PageRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/upload_requests/page",
      request.toJson(),
      options,
      "upload_requests.page",
      field: "page",
      authenticated: true,
    );
    return inttegro_upload_request.Page.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Cancel an upload request
  Future<inttegro_upload_request.UploadRequest> cancel(
    inttegro_upload_request.CancelRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/upload_requests/cancel",
      request.toJson(),
      options,
      "upload_requests.cancel",
      field: "upload_request",
      authenticated: true,
    );
    return inttegro_upload_request.UploadRequest.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Review an upload request attempt
  Future<inttegro_upload_request.UploadRequest> review(
    inttegro_upload_request.ReviewAttemptRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._request(
      "POST",
      "/upload_requests/review",
      request.toJson(),
      options,
      "upload_requests.review",
      field: "upload_request",
      authenticated: true,
    );
    return inttegro_upload_request.UploadRequest.fromJson(
        (value as Map).cast<String, Object?>());
  }

  /// Fulfill an upload request
  Future<inttegro_upload_request.UploadFulfillment> fulfill(
    FulfillUploadRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._fulfillUpload(
      "/upload_requests/upload",
      request,
      options,
      "upload_requests.fulfill",
    );
    return inttegro_upload_request.UploadFulfillment.fromJson(
        (value as Map).cast<String, Object?>());
  }
}
