import 'package:bankcryptt/features/wallet/data/models/wallet_model.dart';
import 'package:bankcryptt/features/wallet/data/models/transaction_model.dart';

class WalletLocalDataSource {
  // ...existing code...

  Future<void> cacheWallet(WalletModel wallet) async {
    // Implementation
  }

  Future<WalletModel> getCachedWallet(String id) async {
    // Implementation
  }

  Future<void> cacheTransactions(List<TransactionModel> transactions) async {
    // Implementation
  }

  Future<List<TransactionModel>> getCachedTransactions(String walletId) async {
    // Implementation
  }

  // ...existing code...
}
