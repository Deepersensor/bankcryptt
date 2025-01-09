class NearfieldTransactionModel extends NearfieldTransaction {
  // ...existing code...

  factory NearfieldTransactionModel.fromJson(Map<String, dynamic> json) {
    return NearfieldTransactionModel(
      // ...existing mappings...
      nfcTagId: json['nfc_tag_id'],
      transactionTime: DateTime.parse(json['transaction_time']),
      // ...existing mappings...
    );
  }

  Map<String, dynamic> toJson() {
    return {
      // ...existing mappings...
      'nfc_tag_id': nfcTagId,
      'transaction_time': transactionTime.toIso8601String(),
      // ...existing mappings...
    };
  }
}
