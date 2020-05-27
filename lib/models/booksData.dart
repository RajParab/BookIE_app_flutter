class BookData {
  String title;
  String author;
  int rating;
  String isin;
  String description;
  String imageURL;
  String genre;

  BookData({
    this.title,
    this.author,
    this.rating,
    this.isin,
    this.imageURL,
    this.description,
    this.genre,
  });
}

List<BookData> books = [
  BookData(
    title: "Rich Dad Poor Dad",
    author: 'Robert Kiyosaaki',
    rating: 4,
    isin: 'asdsfdghewtretry34',
    imageURL: 'assets/images/rich-dad-poor-dad.png',
    description: 'Book on how to start investing and why is it so important',
    genre: 'Personal Finance',
  ),
  BookData(
    title: "Crushing & Influence",
    author: 'Gary Vanerchuck',
    rating: 4,
    isin: 'asdsfdghewtretry34',
    imageURL: 'assets/images/book-1.png',
    description: 'Get to know how to create a personal brand',
    genre: 'Branding',
  ),
  BookData(
    title: "Top 10 Business Hacks",
    author: 'Raj Parab',
    rating: 4,
    isin: 'asdsfdghewtretry34',
    imageURL: 'assets/images/book-2.png',
    description: '10 hacks that can help to grow your business exponentially',
    genre: 'Business',
  )
];
