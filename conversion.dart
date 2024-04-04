// converting String, int, doubles
void main() {
  // string to int
  var a, b, c;
  a = 25;
  b = "5";
  c = a + int.parse(b);
  print("$a + $b = $c");
  // string to double
  var d, e, f;
  d = 15;
  e = "0.1";
  f = d + double.parse(e);
  print(f);
  // int or double to string
  var g, h, i;
  g = 41.2;
  h = "5";
  i = g.toString() + h;
  print(i);

}
