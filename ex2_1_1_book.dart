class Book {
  String? title;
  String? author; 
  int? price;

  Book(this.title,this.author,this.price);

  void showDetail(){
    print("Title: $title, Author: $author, Price: $price,");
  }
}

void main(){
  Book B1 = Book("Happy life","Korn.",250);
  Book B2 = Book("The frog","Korn.",199);
  B2.showDetail();
  B1.showDetail();
}