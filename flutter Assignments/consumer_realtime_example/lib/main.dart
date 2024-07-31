import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) =>
              Bank(bankName: "SBI", mainOfficeLocation: "Mumbai"),
        ),
        ChangeNotifierProvider(
          create: (context) =>
              Branches(branchLocation: "pune", ifcCode: "SBI00098"),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainApp(),
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bank Information"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "BankName : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              Text(
                Provider.of<Bank>(context).bankName,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Main Office Location : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              Text(
                Provider.of<Bank>(context).mainOfficeLocation,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Consumer<Branches>(
            builder: (context, value, child) => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Branch Location : ",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      value.branchLocation,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "IFCCode : ",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      value.ifcCode,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Provider.of<Branches>(context,listen: false).changeData("satara", "SBI000125");
              },
              child: const Text("Change Branch"))
        ],
      ),
    );
  }
}

class Bank {
  String bankName;
  String mainOfficeLocation;
  Bank({required this.bankName, required this.mainOfficeLocation});
}

class Branches extends ChangeNotifier {
  String branchLocation;
  String ifcCode;
  Branches({required this.branchLocation, required this.ifcCode});

  void changeData(String branchLocation, String ifcCode) {
    this.branchLocation = branchLocation;
    this.ifcCode = ifcCode;
    notifyListeners();
  }
}
