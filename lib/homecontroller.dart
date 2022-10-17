import 'package:get/get.dart';

class HomeController extends GetxController
{
  int i=0;
  void add()
  {
    i++;
    update();
  }
  void minus()
  {
    i--;
    update();
  }
  void x2()
  {
    i=i*2;
    update();
  }
  void x4()
  {
    i=i*4;
    update();
  }
  void x6()
  {
    i=i*6;
    update();
  }
  void x8()
  {
    i=i*8;
    update();
  }
 void reset()
 {
   i=0;
   update();
 }

}