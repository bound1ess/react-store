selector = document.getElementById("book-category-list")

categoryList = ["Novel", "Poem", "Drama", "Novella", "Comedy"]

bookList = [
    {name: "Insane Comedy. Part II", price: 240},
    {name: "Best Poem Ever Written", price: 186},
    {name: "Funny Hat", price: 321},
    {name: "White Door Poem", price: 400}
]

React.render(`<BookCategoryList list={categoryList}/>`, selector)

selector = document.getElementById("filterable-book-collection")

React.render(`<FilterableBookCollection books={bookList}/>`, selector)
