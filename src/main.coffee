selector = document.getElementById("book-category-list")
categoryList = ["Novel", "Poem", "Drama", "Novella", "Comedy"]

React.render(`<BookCategoryList list={categoryList}/>`, selector)

selector = document.getElementById("filterable-book-collection")

React.render(`<FilterableBookCollection/>`, selector)
