FilterableBookCollection = React.createClass
    getInitialState: ->
        books: this.props.books
        selected_books: this.props.books
        last_query: ""
        last_pattern: false

    handleQueryUpdate: (query) ->
        query = query.toLowerCase()

        books = this.state.books.filter((book) ->
            book.name.toLowerCase().indexOf(query) > -1
        )

        this.setState(
            { selected_books: books, last_query: query },
            (-> this.handleSortPatternUpdate(this.state.last_pattern)).bind(this)
        )

    handleSortPatternUpdate: (pattern) ->
        comparator = (book1, book2) ->
            if book1.price < book2.price
                return 1 if pattern is true
                return -1

            if book1.price > book2.price
                return -1 if pattern is true
                return 1

            0

        this.setState({
            selected_books: this.state.selected_books.sort(comparator),
            last_pattern: pattern
        })

    handleCategoryListUpdate: (selected) ->
        this.setState({
                books: this.props.books.filter((book) ->
                    selected[book.category] is true
                )
            },
            (-> this.handleQueryUpdate(this.state.last_query)).bind(this)
        )

    render: -> `(
        <div className="container">
            <div className="col-md-3">
                <BookCategoryList
                    list={this.props.categories}
                    parentCallback={this.handleCategoryListUpdate}
                />
            </div>

            <div className="col-md-9">
                <form>
                    <SearchBar parentCallback={this.handleQueryUpdate}/>
                    <SortBar parentCallback={this.handleSortPatternUpdate}/>
                </form>
                <hr/>
                <BookCollection books={this.state.selected_books}/>
            </div>
        </div>
    )`
