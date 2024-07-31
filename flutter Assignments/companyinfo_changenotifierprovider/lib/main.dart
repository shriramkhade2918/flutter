import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompanyInfo(companyName: "Google", empCount: 500),
      child:const MaterialApp(
        home: CompanyData(),
      ),
    );
  }
}

class CompanyData extends StatefulWidget {
  const CompanyData({super.key});
  @override
  State createState() => _CompanyDataState();
}

class _CompanyDataState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChangeNotifierProvider"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Copmany Name : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              Text(
                Provider.of<CompanyInfo>(context).companyName,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Copmany Name : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              Text(
                "${Provider.of<CompanyInfo>(context).empCount}",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              Provider.of<CompanyInfo>(context,listen: false).changeData("Meta", 1000);
            },
            child: const Text(
              "Change comapnyInfo",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                  fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}

class CompanyInfo extends ChangeNotifier {
  String companyName;
  int empCount;
  CompanyInfo({required this.companyName, required this.empCount});

  void changeData(String companyName, int empCount) {
    this.companyName = companyName;
    this.empCount = empCount;
    notifyListeners();
  }
}
