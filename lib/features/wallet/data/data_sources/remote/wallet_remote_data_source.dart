import 'package:bankcryptt/features/wallet/data/models/wallet_model.dart';
import 'package:bankcryptt/features/wallet/data/models/transaction_model.dart';

class WalletRemoteDataSource {
  // ...existing code...

  Future<WalletModel> fetchWallet(String id) async {
    // Implementation
  }

  Future<List<TransactionModel>> fetchTransactions(String walletId) async {
    // Implementation
  }

  // ...existing code...
}
