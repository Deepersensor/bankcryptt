// ...existing code...
class CancelPayment {
  final PaymentsRepository repository;

  CancelPayment(this.repository);

  Future<void> execute(String paymentId) {
    return repository.cancelPayment(paymentId);
  }
}
// ...existing code...
