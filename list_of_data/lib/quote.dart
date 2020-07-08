class Quote {
  String text;
  String author;

// when we use curly braces in function it considers it as named parameter
// so we need to call the function with the names of the actual parameter
// firstly our function was like
//  Quote(String text, String author) {
//    this.text = text;
//    this.author = author;
//  }
  // we can write it as -
  Quote({this.text, this.author});
  // after using named parameters
}