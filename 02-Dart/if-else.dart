// if ( condition ){
//         // body of if
// }

void main() {

  final numbers = <int>[1, 2, 3, 5, 6, 7];
  var result = numbers.any(
    (element) => element >= 7,
  ); // true; result = numbers.any((element) => element >= 10); // false;

  var number = 7;
  numbers.forEach((e){
    print(e);
    if(e==number){
      print('yes');
    }
  });

  print(result);
}
