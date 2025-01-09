class DeviceInfoModel extends DeviceInfo {
  // ...existing code...

  factory DeviceInfoModel.fromJson(Map<String, dynamic> json) {
    return DeviceInfoModel(
      // ...existing mappings...
      hasNfc: json['has_nfc'],
      // ...existing mappings...
    );
  }

  Map<String, dynamic> toJson() {
    return {
      // ...existing mappings...
      'has_nfc': hasNfc,
      // ...existing mappings...
    };
  }
}
