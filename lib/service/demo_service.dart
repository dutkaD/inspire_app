class DemoService {

  // Example of a private method
  String _myPrivateFunction(){
    return "bla!";
  }

  // Example of a public method
  void myPublicFunction(String word){
    print(word);
    print(_myPrivateFunction());
  }

  // Example static method interpolation
  static String generateAuthorLabel(String title){
    return "Author: $title";
  }

  // Example static method interpolation {}
  static String generateAuthorLabelAllCaps(String title){
    return "Author: ${title.toUpperCase()}";
  }
}
