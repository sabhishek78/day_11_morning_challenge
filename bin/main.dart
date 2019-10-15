import 'dart:math';
import 'dart:io';
// Challenge 1
// Create a function that returns the total number of steps it takes to transform each element to the maximal element in the list.
// Each step consists of incrementing a digit by one.
// Examples
// incrementToTop([3, 4, 5]) ➞ 3
// 3 increments: 3 -> 4, 4 -> 5; 4 -> 5
// incrementToTop([4, 3, 4]) ➞ 1
// incrementToTop([3, 3, 3]) ➞ 0
// incrementToTop([3, 10, 3]) ➞ 14
int incrementToTop(List <int> list)
{
  list.sort();
  int operations=0;
  int max=list[list.length-1];
  for(int i=0;i<list.length;i++) {
    while (list[i] < max) {
      list[i] += 1;
      operations++;
    }
  }
  return operations;
}
// Challenge 2
// In BlackJack, cards are counted with -1, 0, 1 values:
//
//  - 2, 3, 4, 5, 6 are counted as +1
//  - 7, 8, 9 are counted as 0
//  - 10, J, Q, K, A are counted as -1
//  Create a function that counts the number and returns it from the list of cards provided.
//  count([5, 9, 10, 3, "J", "A", 4, 8, 5]) ➞ 1
//
//  count(["A", "A", "K", "Q", "Q", "J"]) ➞ -6
//
//  count(["A", 5, 5, 2, 6, 2, 3, 8, 9, 7]) ➞ 5

// Challenge 3
// Write a test case each for previous two functions you wrote
int count(List list)
{
  int c=0;
  for(int i=0;i<list.length;i++){
    if(list[i]==2 || list[i]==3 || list[i]== 4 || list[i]==5 || list[i]==6)
      {
        c+=1;
      }
    else if(list[i]==7 || list[i]==8 || list[i]== 9)
    {

    }
    else if(list[i]==10 || list[i]=='J' || list[i]== 'Q' || list[i]=='K' || list[i]== 'A')
      {
        c-=1;
      }
  }
  return c;
}

main() {
  List<int> list1=[3,4,5];
  List list2=[5, 9, 10, 3, "J", "A", 4, 8, 5];
  print(incrementToTop(list1));
  print(count(list2));
}
