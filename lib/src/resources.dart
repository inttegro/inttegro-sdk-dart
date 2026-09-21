part of '../inttegro.dart';

/// Operations for Inttegro apps.
final class Apps {
  final Client _client;
  const Apps._(this._client);

  /// Create an application
  Future<Application> create(
    CreateApplicationRequest request, {
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
    return Application.fromJson((value as Map).cast<String, Object?>());
  }

  /// Retrieve the authenticated application
  Future<Application> lookup({
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
    return Application.fromJson((value as Map).cast<String, Object?>());
  }

  /// Update the authenticated application
  Future<Application> update(
    UpdateApplicationRequest request, {
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
    return Application.fromJson((value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro balance transactions.
final class BalanceTransactions {
  final Client _client;
  const BalanceTransactions._(this._client);

  /// Look up a balance transaction
  Future<BalanceTransaction> lookup(
    LookupBalanceTransactionRequest request, {
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
    return BalanceTransaction.fromJson((value as Map).cast<String, Object?>());
  }

  /// Page through balance transactions
  Future<BalanceTransactionPage> page(
    PageBalanceTransactionsRequest request, {
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
    return BalanceTransactionPage.fromJson(
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
  Future<BroadcastDetail> lookup(
    LookupBroadcastRequest request, {
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
    return BroadcastDetail.fromJson((value as Map).cast<String, Object?>());
  }

  /// Cancel a broadcast
  Future<BroadcastDetail> cancel(
    CancelBroadcastRequest request, {
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
    return BroadcastDetail.fromJson((value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro chimes.
final class Chimes {
  final Client _client;
  const Chimes._(this._client);

  /// Send a Chime
  Future<Chime> send(
    SendChimeRequest request, {
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
    return Chime.fromJson((value as Map).cast<String, Object?>());
  }

  /// Look up a Chime
  Future<Chime> lookup(
    LookupChimeRequest request, {
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
    return Chime.fromJson((value as Map).cast<String, Object?>());
  }

  /// Page through Chimes
  Future<ChimePage> page(
    PageChimesRequest request, {
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
    return ChimePage.fromJson((value as Map).cast<String, Object?>());
  }

  /// Schedule Chimes
  Future<ScheduleCreationDetail> schedule(
    ScheduleChimeRequest request, {
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
    return ScheduleCreationDetail.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }

  /// Broadcast Chimes
  Future<BroadcastCreationDetail> broadcast(
    BroadcastRequest request, {
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
    return BroadcastCreationDetail.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }
}

/// Operations for Inttegro customers.
final class Customers {
  final Client _client;
  const Customers._(this._client);

  /// Create a customer
  Future<Customer> create(
    CreateCustomerRequest request, {
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
    return Customer.fromJson((value as Map).cast<String, Object?>());
  }

  /// Look up a customer
  Future<Customer> lookup(
    LookupCustomerRequest request, {
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
    return Customer.fromJson((value as Map).cast<String, Object?>());
  }

  /// Update a customer
  Future<Customer> update(
    UpdateCustomerRequest request, {
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
    return Customer.fromJson((value as Map).cast<String, Object?>());
  }

  /// Page through customers
  Future<CustomerPage> page(
    PageCustomersRequest request, {
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
    return CustomerPage.fromJson((value as Map).cast<String, Object?>());
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
  Future<FileLinkCreation> create(
    CreateFileLinkRequest request, {
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
    return FileLinkCreation.fromJson((value as Map).cast<String, Object?>());
  }

  /// Lookup a file link
  Future<FileLink> lookup(
    LookupFileLinkRequest request, {
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
    return FileLink.fromJson((value as Map).cast<String, Object?>());
  }

  /// Page file links
  Future<FileLinkPage> page(
    PageFileLinksRequest request, {
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
    return FileLinkPage.fromJson((value as Map).cast<String, Object?>());
  }

  /// Revoke a file link
  Future<FileLink> revoke(
    RevokeFileLinkRequest request, {
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
    return FileLink.fromJson((value as Map).cast<String, Object?>());
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
  Future<FileReferenceReconciliation> reconcile(
    FileReferenceReconcileRequest request, {
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
    return FileReferenceReconciliation.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }
}

/// Operations for Inttegro files.
final class Files {
  final Client _client;
  const Files._(this._client);

  /// Create a file
  Future<File> create(
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
    return File.fromJson((value as Map).cast<String, Object?>());
  }

  /// Lookup a file
  Future<File> lookup(
    LookupFileRequest request, {
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
    return File.fromJson((value as Map).cast<String, Object?>());
  }

  /// Page files
  Future<FilePage> page(
    PageFilesRequest request, {
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
    return FilePage.fromJson((value as Map).cast<String, Object?>());
  }

  /// Deliver file contents
  Future<FileDownload> contents(
    FileContentsRequest request, {
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
  Future<File> delete(
    DeleteFileRequest request, {
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
    return File.fromJson((value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro financial accounts.
final class FinancialAccounts {
  final Client _client;
  const FinancialAccounts._(this._client);

  /// Create a financial account
  Future<FinancialAccount> create(
    FinancialAccountCreateRequest request, {
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
    return FinancialAccount.fromJson((value as Map).cast<String, Object?>());
  }

  /// Lookup a financial account
  Future<FinancialAccount> lookup(
    FinancialAccountIDRequest request, {
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
    return FinancialAccount.fromJson((value as Map).cast<String, Object?>());
  }

  /// Page through financial accounts
  Future<FinancialAccountPage> page(
    FinancialAccountPageRequest request, {
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
    return FinancialAccountPage.fromJson(
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
  Future<FinancialAccount> connect(
    FinancialAccountCreateRequest request, {
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
    return FinancialAccount.fromJson((value as Map).cast<String, Object?>());
  }

  /// Update a financial account
  Future<FinancialAccount> update(
    FinancialAccountUpdateRequest request, {
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
    return FinancialAccount.fromJson((value as Map).cast<String, Object?>());
  }

  /// Enable push capability
  Future<FinancialAccount> enablePush(
    FinancialAccountIDRequest request, {
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
    return FinancialAccount.fromJson((value as Map).cast<String, Object?>());
  }

  /// Disable push capability
  Future<FinancialAccount> disablePush(
    FinancialAccountDisableRequest request, {
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
    return FinancialAccount.fromJson((value as Map).cast<String, Object?>());
  }

  /// Disconnect a financial account
  Future<FinancialAccount> disconnect(
    FinancialAccountDisableRequest request, {
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
    return FinancialAccount.fromJson((value as Map).cast<String, Object?>());
  }

  /// Reconnect a financial account
  Future<FinancialAccount> reconnect(
    FinancialAccountIDRequest request, {
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
    return FinancialAccount.fromJson((value as Map).cast<String, Object?>());
  }

  /// Enable pull capability
  Future<FinancialAccount> enablePull(
    FinancialAccountEnablePullRequest request, {
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
    return FinancialAccount.fromJson((value as Map).cast<String, Object?>());
  }

  /// Disable pull capability
  Future<FinancialAccount> disablePull(
    FinancialAccountIDRequest request, {
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
    return FinancialAccount.fromJson((value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro keys.
final class Keys {
  final Client _client;
  const Keys._(this._client);

  /// Generate a secret key
  Future<GeneratedSecretKey> generate(
    GenerateSecretKeyRequest request, {
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
    return GeneratedSecretKey.fromJson((value as Map).cast<String, Object?>());
  }

  /// Page secret keys
  Future<SecretKeyPage> page(
    PageSecretKeysRequest request, {
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
    return SecretKeyPage.fromJson((value as Map).cast<String, Object?>());
  }

  /// Retrieve a secret key
  Future<SecretKey> lookup(
    LookupSecretKeyRequest request, {
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
    return SecretKey.fromJson((value as Map).cast<String, Object?>());
  }

  /// Update a secret key
  Future<SecretKey> update(
    UpdateSecretKeyRequest request, {
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
    return SecretKey.fromJson((value as Map).cast<String, Object?>());
  }

  /// Revoke a secret key
  Future<SecretKey> destroy(
    DestroySecretKeyRequest request, {
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
    return SecretKey.fromJson((value as Map).cast<String, Object?>());
  }

  /// Retrieve secret key usage
  Future<SecretKeyUsage> usage(
    SecretKeyUsageRequest request, {
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
    return SecretKeyUsage.fromJson((value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro message templates.
final class MessageTemplates {
  final Client _client;
  const MessageTemplates._(this._client);

  /// Create a message template
  Future<MessageTemplate> create(
    CreateMessageTemplateRequest request, {
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
    return MessageTemplate.fromJson((value as Map).cast<String, Object?>());
  }

  /// Update a message template
  Future<MessageTemplate> update(
    UpdateMessageTemplateRequest request, {
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
    return MessageTemplate.fromJson((value as Map).cast<String, Object?>());
  }

  /// Publish a message template
  Future<MessageTemplate> publish(
    MessageTemplateIDRequest request, {
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
    return MessageTemplate.fromJson((value as Map).cast<String, Object?>());
  }

  /// Archive a message template
  Future<MessageTemplate> archive(
    MessageTemplateIDRequest request, {
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
    return MessageTemplate.fromJson((value as Map).cast<String, Object?>());
  }

  /// Look up a message template
  Future<MessageTemplate> lookup(
    MessageTemplateIDRequest request, {
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
    return MessageTemplate.fromJson((value as Map).cast<String, Object?>());
  }

  /// Page message templates
  Future<MessageTemplatesPage> page(
    PageMessageTemplatesRequest request, {
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
    return MessageTemplatesPage.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }

  /// Render a message template preview
  Future<MessageTemplatePreview> renderPreview(
    RenderMessageTemplatePreviewRequest request, {
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
    return MessageTemplatePreview.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }
}

/// Operations for Inttegro orders.
final class Orders {
  final Client _client;
  const Orders._(this._client);

  /// Create a new order
  Future<Order> create(
    CreateOrderRequest request, {
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
    return Order.fromJson((value as Map).cast<String, Object?>());
  }

  /// Lookup an order
  Future<Order> lookup(
    LookupOrderRequest request, {
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
    return Order.fromJson((value as Map).cast<String, Object?>());
  }

  /// Update an order
  Future<Order> update(
    UpdateOrderRequest request, {
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
    return Order.fromJson((value as Map).cast<String, Object?>());
  }

  /// Pay for an order
  Future<Order> pay(
    PayOrderRequest request, {
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
    return Order.fromJson((value as Map).cast<String, Object?>());
  }

  /// Confirm payment with token
  Future<Order> confirmPayment(
    ConfirmPaymentRequest request, {
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
    return Order.fromJson((value as Map).cast<String, Object?>());
  }

  /// Request payment confirmation
  Future<Order> requestConfirmation(
    RequestConfirmationRequest request, {
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
    return Order.fromJson((value as Map).cast<String, Object?>());
  }

  /// Cancel an order
  Future<Order> cancel(
    CancelOrderRequest request, {
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
    return Order.fromJson((value as Map).cast<String, Object?>());
  }

  /// Finalize an order
  Future<Order> finalize(
    FinalizeOrderRequest request, {
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
    return Order.fromJson((value as Map).cast<String, Object?>());
  }

  /// Complete an order
  Future<Order> complete(
    CompleteOrderRequest request, {
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
    return Order.fromJson((value as Map).cast<String, Object?>());
  }

  /// Send an order invoice
  Future<OrderDocumentDeliveryResult> sendInvoice(
    OrderDocumentDeliveryRequest request, {
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
    return OrderDocumentDeliveryResult.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }

  /// Send an order receipt
  Future<OrderDocumentDeliveryResult> sendReceipt(
    OrderDocumentDeliveryRequest request, {
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
    return OrderDocumentDeliveryResult.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }

  /// Page through orders
  Future<OrderPage> page(
    PageOrdersRequest request, {
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
    return OrderPage.fromJson((value as Map).cast<String, Object?>());
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
  Future<OTPTransaction> initiate(
    InitiateOTPRequest request, {
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
    return OTPTransaction.fromJson((value as Map).cast<String, Object?>());
  }

  /// Verify OTP token
  Future<OTPVerification> verify(
    VerifyOTPRequest request, {
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
    return OTPVerification.fromJson((value as Map).cast<String, Object?>());
  }

  /// Lookup OTP transaction
  Future<OTPTransaction> lookup(
    LookupOTPRequest request, {
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
    return OTPTransaction.fromJson((value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro payment methods.
final class PaymentMethods {
  final Client _client;
  const PaymentMethods._(this._client);

  /// Tokenize a payment method
  Future<PaymentMethod> tokenize(
    TokenizeMobileMoneyPaymentMethodRequest request, {
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
    return PaymentMethod.fromJson((value as Map).cast<String, Object?>());
  }

  /// Lookup a payment method
  Future<PaymentMethod> lookup(
    LookupPaymentMethodRequest request, {
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
    return PaymentMethod.fromJson((value as Map).cast<String, Object?>());
  }

  /// Page payment methods
  Future<PaymentMethodPage> page(
    PaymentMethodPageRequest request, {
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
    return PaymentMethodPage.fromJson((value as Map).cast<String, Object?>());
  }

  /// Update a payment method
  Future<PaymentMethod> update(
    UpdatePaymentMethodRequest request, {
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
    return PaymentMethod.fromJson((value as Map).cast<String, Object?>());
  }

  /// Activate a payment method
  Future<PaymentMethod> activate(
    ActivatePaymentMethodRequest request, {
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
    return PaymentMethod.fromJson((value as Map).cast<String, Object?>());
  }

  /// Deactivate a payment method
  Future<PaymentMethod> deactivate(
    DisactivatePaymentMethodRequest request, {
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
    return PaymentMethod.fromJson((value as Map).cast<String, Object?>());
  }

  /// Archive a payment method
  Future<PaymentMethod> archive(
    ArchivePaymentMethodRequest request, {
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
    return PaymentMethod.fromJson((value as Map).cast<String, Object?>());
  }

  /// Unarchive a payment method
  Future<PaymentMethod> unarchive(
    UnarchivePaymentMethodRequest request, {
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
    return PaymentMethod.fromJson((value as Map).cast<String, Object?>());
  }

  /// Get payment method settings
  Future<PaymentMethodSettings> settings({
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
    return PaymentMethodSettings.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }
}

/// Operations for Inttegro payouts.
final class Payouts {
  final Client _client;
  const Payouts._(this._client);

  /// Schedule a payout
  Future<Payout> schedule(
    SchedulePayoutRequest request, {
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
    return Payout.fromJson((value as Map).cast<String, Object?>());
  }

  /// Lookup a payout
  Future<Payout> lookup(
    LookupPayoutRequest request, {
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
    return Payout.fromJson((value as Map).cast<String, Object?>());
  }

  /// Set payout destinations
  Future<PayoutSettingsMutation> setDestinations(
    SetPayoutDestinationsRequest request, {
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
    return PayoutSettingsMutation.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }

  /// Get payout settings
  Future<PayoutSettingsLookup> settings({
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
    return PayoutSettingsLookup.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }

  /// Disable automatic payouts
  Future<PayoutSettingsMutation> disable({
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
    return PayoutSettingsMutation.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }

  /// Enable automatic payouts
  Future<PayoutSettingsMutation> enable({
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
    return PayoutSettingsMutation.fromJson(
      (value as Map).cast<String, Object?>(),
    );
  }

  /// Page through payouts
  Future<PayoutPage> page(
    PagePayoutsRequest request, {
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
    return PayoutPage.fromJson((value as Map).cast<String, Object?>());
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
  Future<Payout> cancel(
    CancelPayoutRequest request, {
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
    return Payout.fromJson((value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro prices.
final class Prices {
  final Client _client;
  const Prices._(this._client);

  /// Create a price
  Future<CatalogPrice> create(
    CatalogPriceParams request, {
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
    return CatalogPrice.fromJson((value as Map).cast<String, Object?>());
  }

  /// Lookup a price
  Future<CatalogPrice> lookup(
    LookupPriceRequest request, {
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
    return CatalogPrice.fromJson((value as Map).cast<String, Object?>());
  }

  /// Page through prices
  Future<PricePage> page(
    PricePageRequest request, {
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
    return PricePage.fromJson((value as Map).cast<String, Object?>());
  }

  /// Update a price
  Future<CatalogPrice> update(
    UpdatePriceRequest request, {
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
    return CatalogPrice.fromJson((value as Map).cast<String, Object?>());
  }

  /// Activate a price
  Future<CatalogPrice> activate(
    PriceActionRequest request, {
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
    return CatalogPrice.fromJson((value as Map).cast<String, Object?>());
  }

  /// Deactivate a price
  Future<CatalogPrice> deactivate(
    PriceActionRequest request, {
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
    return CatalogPrice.fromJson((value as Map).cast<String, Object?>());
  }

  /// Archive a price
  Future<CatalogPrice> archive(
    PriceActionRequest request, {
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
    return CatalogPrice.fromJson((value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro products.
final class Products {
  final Client _client;
  const Products._(this._client);

  /// Create a product
  Future<Product> create(
    CreateProductRequest request, {
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
    return Product.fromJson((value as Map).cast<String, Object?>());
  }

  /// Add a price to a product
  Future<CatalogPrice> addPrice(
    AddProductPriceRequest request, {
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
    return CatalogPrice.fromJson((value as Map).cast<String, Object?>());
  }

  /// Lookup a product
  Future<Product> lookup(
    LookupProductRequest request, {
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
    return Product.fromJson((value as Map).cast<String, Object?>());
  }

  /// Update a product
  Future<Product> update(
    UpdateProductRequest request, {
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
    return Product.fromJson((value as Map).cast<String, Object?>());
  }

  /// Publish a product
  Future<Product> publish(
    ProductActionRequest request, {
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
    return Product.fromJson((value as Map).cast<String, Object?>());
  }

  /// Unpublish a product
  Future<Product> unpublish(
    ProductActionRequest request, {
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
    return Product.fromJson((value as Map).cast<String, Object?>());
  }

  /// Archive a product
  Future<Product> archive(
    ProductActionRequest request, {
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
    return Product.fromJson((value as Map).cast<String, Object?>());
  }

  /// Page through products
  Future<ProductPage> page(
    PageProductsRequest request, {
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
    return ProductPage.fromJson((value as Map).cast<String, Object?>());
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
  Future<PurchaseIntent> create(
    CreatePurchaseIntentRequest request, {
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
    return PurchaseIntent.fromJson((value as Map).cast<String, Object?>());
  }

  /// Update a purchase intent
  Future<PurchaseIntent> update(
    UpdatePurchaseIntentRequest request, {
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
    return PurchaseIntent.fromJson((value as Map).cast<String, Object?>());
  }

  /// Cancel a purchase intent
  Future<PurchaseIntent> cancel(
    CancelPurchaseIntentRequest request, {
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
    return PurchaseIntent.fromJson((value as Map).cast<String, Object?>());
  }

  /// Lookup a purchase intent
  Future<PurchaseIntent> lookup(
    LookupPurchaseIntentRequest request, {
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
    return PurchaseIntent.fromJson((value as Map).cast<String, Object?>());
  }

  /// List purchase intents
  Future<PurchaseIntentPage> page(
    PagePurchaseIntentsRequest request, {
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
    return PurchaseIntentPage.fromJson((value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro refunds.
final class Refunds {
  final Client _client;
  const Refunds._(this._client);

  /// Create a refund
  Future<Refund> create(
    CreateRefundRequest request, {
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
    return Refund.fromJson((value as Map).cast<String, Object?>());
  }

  /// Cancel a refund
  Future<Refund> cancel(
    CancelRefundRequest request, {
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
    return Refund.fromJson((value as Map).cast<String, Object?>());
  }

  /// Look up a refund
  Future<Refund> lookup(
    LookupRefundRequest request, {
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
    return Refund.fromJson((value as Map).cast<String, Object?>());
  }

  /// Page through refunds
  Future<RefundPage> page(
    PageRefundsRequest request, {
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
    return RefundPage.fromJson((value as Map).cast<String, Object?>());
  }
}

/// Operations for Inttegro schedules.
final class Schedules {
  final Client _client;
  const Schedules._(this._client);

  /// Look up a scheduled Chime
  Future<ScheduleDetail> lookup(
    LookupScheduleRequest request, {
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
    return ScheduleDetail.fromJson((value as Map).cast<String, Object?>());
  }

  /// Cancel a scheduled Chime
  Future<ScheduleCancelDetail> cancel(
    CancelScheduleRequest request, {
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
    return ScheduleCancelDetail.fromJson(
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
  Future<UploadRequest> create(
    CreateUploadRequestRequest request, {
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
    return UploadRequest.fromJson((value as Map).cast<String, Object?>());
  }

  /// Lookup an upload request
  Future<UploadRequest> lookup(
    LookupUploadRequestRequest request, {
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
    return UploadRequest.fromJson((value as Map).cast<String, Object?>());
  }

  /// Page upload requests
  Future<UploadRequestPage> page(
    PageUploadRequestsRequest request, {
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
    return UploadRequestPage.fromJson((value as Map).cast<String, Object?>());
  }

  /// Cancel an upload request
  Future<UploadRequest> cancel(
    CancelUploadRequestRequest request, {
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
    return UploadRequest.fromJson((value as Map).cast<String, Object?>());
  }

  /// Review an upload request attempt
  Future<UploadRequest> review(
    ReviewUploadRequestAttemptRequest request, {
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
    return UploadRequest.fromJson((value as Map).cast<String, Object?>());
  }

  /// Fulfill an upload request
  Future<UploadFulfillment> fulfill(
    FulfillUploadRequest request, {
    RequestOptions options = const RequestOptions(),
  }) async {
    final value = await _client._fulfillUpload(
      "/upload_requests/upload",
      request,
      options,
      "upload_requests.fulfill",
    );
    return UploadFulfillment.fromJson((value as Map).cast<String, Object?>());
  }
}
