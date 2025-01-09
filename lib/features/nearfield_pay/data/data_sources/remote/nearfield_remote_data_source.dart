import 'package:bankcryptt/features/nearfield_pay/data/models/nearfield_transaction_model.dart';

class NearfieldRemoteDataSource {
  // ...existing code...

  Future<void> sendNfcTransaction(NearfieldTransactionModel transaction) async {
    // Implement API call to send NFC transaction data
  }

  Stream<NearfieldTransactionModel> listenNfcTransactions() {
    // Implement API stream for NFC transactions
  }

  // ...existing code...
}
