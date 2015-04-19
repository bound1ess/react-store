categoryList = ["Novel", "Poem", "Drama", "Novella", "Comedy"]

bookList = [
    {name: "Best Poem Ever Written", price: 186, category: "poem"},
    {name: "What a Drama", price: 200, category: "drama"},
    {name: "Insane Comedy. Part II", price: 240, category: "comedy"},
    {name: "What a Great Novel", price: 280, category: "novel"},
    {name: "This Novel Is Sick", price: 320, category: "novel"},
    {name: "Funny Hat", price: 321, category: "comedy"},
    {name: "White Door Poem", price: 400, category: "poem"},
    {name: "The Drama", price: 666, category: "drama"},
    {name: "Novella Strikes Again", price: 678, category: "novella"},
    {name: "Such a Novella", price: 1890, category: "novella"}
]

selector = document.getElementById("body")
component = `<FilterableBookCollection categories={categoryList} books={bookList}/>`

React.render(component, selector)
