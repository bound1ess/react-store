selector = document.getElementById("book-category-list")
categoryList = ["Novel", "Poem", "Drama", "Novella", "Comedy"]
bookList = [
    {name: "Insane Comedy. Part II"},
    {name: "Best Poem Ever Written"},
    {name: "Funny Hat"}
]

React.render(`<BookCategoryList list={categoryList}/>`, selector)

selector = document.getElementById("filterable-book-collection")

React.render(`<FilterableBookCollection books={bookList}/>`, selector)
