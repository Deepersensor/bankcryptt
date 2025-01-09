class HelpPage extends StatelessWidget {
  // ...existing code...

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ...existing code...
      body: Column(
        children: [
          // ...existing help topics...
          ListTile(
            title: Text('Nearfield Payments'),
            subtitle: Text('Learn how to use NFC for secure transactions.'),
            onTap: () {
              // Navigate to nearfield payment help details
            },
          ),
        ],
      ),
      // ...existing code...
    );
  }
}
