categoryList = ["Novel", "Poem", "Drama", "Novella", "Comedy"]

bookList = [
    {name: "Insane Comedy. Part II", price: 240, category: "comedy"},
    {name: "Best Poem Ever Written", price: 186, category: "poem"},
    {name: "Funny Hat", price: 321, category: "comedy"},
    {name: "White Door Poem", price: 400, category: "poem"}
]

selector = document.getElementById("body")
component = `<FilterableBookCollection categories={categoryList} books={bookList}/>`

React.render(component, selector)
