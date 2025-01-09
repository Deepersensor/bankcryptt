class PaymentMethodModel extends PaymentMethod {
  // ...existing code...

  factory PaymentMethodModel.fromJson(Map<String, dynamic> json) {
    return PaymentMethodModel(
      // ...existing mappings...
      isNfcSupported: json['is_nfc_supported'],
      // ...existing mappings...
    );
  }

  Map<String, dynamic> toJson() {
    return {
      // ...existing mappings...
      'is_nfc_supported': isNfcSupported,
      // ...existing mappings...
    };
  }
}
