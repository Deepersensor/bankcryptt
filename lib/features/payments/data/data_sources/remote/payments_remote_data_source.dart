abstract class PaymentsRemoteDataSource {
  Future<void> cancelPayment(String paymentId);
}

class PaymentsRemoteDataSourceImpl implements PaymentsRemoteDataSource {
  final http.Client client;

  PaymentsRemoteDataSourceImpl({required this.client});

  @override
  Future<void> cancelPayment(String paymentId) async {
    final response = await client.post(
      Uri.parse('https://api.bankcryptt.com/payments/cancel'),
      body: {'paymentId': paymentId},
    );

    if (response.statusCode != 200) {
      throw ServerException();
    }
  }
}
