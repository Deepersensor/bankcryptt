// ...existing code...
abstract class WalletRepository {
  Future<void> withdrawFunds(WithdrawParams params);
  Future<void> updateWallet(UpdateParams params);
  Future<Wallet> fetchWalletDetails(FetchParams params);
  Future<List<Transaction>> fetchTransactionHistory(FetchHistoryParams params);
  Future<void> deleteWallet(DeleteParams params);
  Future<Wallet> createWallet(CreateParams params);
  Future<void> addFunds(AddFundsParams params);
}
// ...existing code...
