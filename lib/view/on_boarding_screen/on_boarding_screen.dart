import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_prefrence_task/view/login_screen/presentations/screens/login_screen.dart';
import '../../models/onboarding_model.dart';
class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentPage  = 0;
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  _storeOnBoardingInfo()async{
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.white,
        elevation: 0,
        actions: [
          TextButton(onPressed: ()async{
           await  _storeOnBoardingInfo();
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) =>
              LoginScreen(),));
          }, child: const Text("تخطي",))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: PageView.builder(
          controller: _pageController,
          onPageChanged: (int index){
            setState(() {
              currentPage = index;
            });
          },
          itemCount: screens.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
            Image.asset(screens[index].img),
            SizedBox(
              height: 10.0,
              child: ListView.builder(


                itemCount: screens.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,

                itemBuilder: (context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 3.0),
                      width: 8.0,
                      height: 8.0,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    )
                  ],
                );
              },),
            ),
            Text(screens[index].text,style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
            Text(screens[index].desc,style: const TextStyle(
                color: Colors.black,
                fontSize: 16,)),
            InkWell(
              onTap: ()async{
                await _storeOnBoardingInfo();
                if(index == screens.length -1){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) =>
                      LoginScreen(),));
                }
                _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.bounceIn);
              },
              child: Container(padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15.0),
              ),
                child:const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                  Text("التالي",style: TextStyle(color: Colors.white,
                  fontSize: 18)),
                      Icon(Icons.arrow_forward,color: Colors.white,),
                ]),
              ),
            )
          ],);
        },),
      ),
    );
  }
}
