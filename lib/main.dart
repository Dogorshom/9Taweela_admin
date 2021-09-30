import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:taweela_admin/constant/constant.dart';
import 'package:taweela_admin/pages/Home/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(activePage: "HomeScreen"),
    );
  }
}

/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CollectionReference ordersCollection = FirebaseFirestore.instance.collection('orders');
  String? email;
  String? password;
  TextEditingController emailController    = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Future getActiveOrders(String username) async{
      try {
        List<Order> postedOrders=[];
        await ordersCollection.where("nameOfOrderUser",isEqualTo:"Abdelsalam Dogorshom 2").where("orderStatus",whereIn: ["ordered","active","delivering"]).get().then((event) {
          for (var v in event.docs) {
            Order order = Order(
                id                          : v.id,
                title                       : v["title"],
                orderStatus                 : v["orderStatus"],
                description                 : v["description"],
                deliveryPrice               : v["deliveryPrice"],
                deliveryPriceWithPromotion  : v["deliveryPriceWithPromotion"],
            );
            postedOrders.add(order);
          }
        });
            return postedOrders;
      } on Exception catch (e) {
        print(e.toString());
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          children: [
            const Text(
              'Drivers',
              style: TextStyle(
                // fontFamily: 'Poppins',
                fontSize: 70,
                color: Color(0xff000000),
                letterSpacing: 0.4999999952316284,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
            TextField(
              controller: emailController,
              onChanged: (v)=>email=v,
            ),
            const SizedBox(height:20),
            TextField(
              controller: passwordController,
              onChanged: (v)=> password = v,
            ),
            const SizedBox(height:70),
            ElevatedButton(
              onPressed: ()async{
                try {
                  UserCredential? result = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email!, password: password!);
                  print("this user come from firebase ${result.user}");
                  if(result.user!=null){
                    print("True Sign In");
                  }else{
                    print("Can't Sign In");
                  }
                } catch (e) {
                  print(e.toString());
                }
                },
              child:const Text("Sign In")
            ),
            FutureBuilder(
                future: getActiveOrders("username"),
                builder: (context,AsyncSnapshot snapshot){
              if(snapshot.connectionState==ConnectionState.waiting){
                return const Center(child:Text("Loading...."));
              }else{
                return Expanded(
                  child:  ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      Order myOrder = snapshot.data[index];
                      // snapshot.data[index];
                      print("my Order is $myOrder");
                      return Column(
                        children: [
                        Text("${myOrder.title}"),
                        Text("${myOrder.id}")  ,
                        Text("${myOrder.deliveryPrice}")
                        ],
                      );
                    },
                  ),
                );
              }
            })

          ],
        )
      ),
    );
  }
}

*/
