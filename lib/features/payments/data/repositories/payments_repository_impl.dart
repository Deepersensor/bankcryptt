// ...existing code...
class PaymentsRepositoryImpl implements PaymentsRepository {
  final PaymentsRemoteDataSource remoteDataSource;
  final PaymentsLocalDataSource localDataSource;
  final AnalyticsService analyticsService;

  PaymentsRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.analyticsService,
  });

  // ...existing methods...

  @override
  Future<void> cancelPayment(String paymentId) async {
    await remoteDataSource.cancelPayment(paymentId);
    analyticsService.logEvent('payment_cancelled', {'paymentId': paymentId});
  }
}
// ...existing code...
