import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class CompanyInfo {
  String companyName;
  int empCount;
  CompanyInfo({required this.companyName, required this.empCount});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context,) => CompanyInfo(companyName: "Google", empCount: 250),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
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
  TextEditingController name = TextEditingController();
  TextEditingController count = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "CompanyName : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              Text(
                Provider.of<CompanyInfo>(context).companyName,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "EmpCount :  ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              Text(
                "${Provider.of<CompanyInfo>(context).empCount}",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              showModelBottumSheet();
              // Provider.of<CompanyInfo>(context,listen: false).companyName = "Meta";
              // Provider.of<CompanyInfo>(context,listen: false).empCount = 150;
              // setState(() {});
            },
            child: const Text(
              " Change Information:",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }

  void showModelBottumSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text("Company Name: "),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: name,
              decoration: const InputDecoration(
                  label: Text(" Enter CompanyName"),
                  hintText: "Enter CompanyName",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Employee Count: "),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: count,
              decoration: const InputDecoration(
                  label: Text(" Enter EmployeeCount"),
                  hintText: "Enter EmployeeCount",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Provider.of<CompanyInfo>(context,listen: false).companyName =
                          name.text.trim();
                      Provider.of<CompanyInfo>(context,listen: false).empCount =
                          int.parse(count.text.trim());
                    setState(() {
                      
                      name.clear();
                      count.clear();
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 100,
                    color: Colors.indigoAccent,
                    child: const Text(
                      "Add",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
