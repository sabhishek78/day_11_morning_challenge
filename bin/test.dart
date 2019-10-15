import 'dart:math';
import 'main.dart';

import 'package:test/test.dart';

void main() {
  List<int> list1=[3,4,5];
  List list2=[5, 9, 10, 3, "J", "A", 4, 8, 5];
  test('Increment to Top test', (){
    expect(incrementToTop([3,4,5]),3);
    expect(incrementToTop([4,3,4]),1);
    expect(incrementToTop([3,3,3]),0);
    expect(incrementToTop([3,10,3]),14);
  });
  test('counttest', (){
    expect(count([5, 9, 10, 3, "J", "A", 4, 8, 5]),1);
    expect(count(["A", "A", "K", "Q", "Q", "J"]),-6);
    expect(count(["A", 5, 5, 2, 6, 2, 3, 8, 9, 7]),5);
  });
}
