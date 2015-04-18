FilterableBookCollection = React.createClass
    getInitialState: ->
        books: this.props.books

    handleQueryUpdate: (query) ->
        query = query.toLowerCase()
        books = this.props.books.filter((book) -> book.name.toLowerCase().indexOf(query) > -1)
        this.setState({ books })

    handleSortPatternUpdate: (pattern) ->
        comparator = (book1, book2) ->
            if book1.price < book2.price
                return 1 if pattern is true
                return -1

            if book1.price > book2.price
                return -1 if pattern is true
                return 1

            0

        this.setState({ books: this.props.books.sort(comparator) })

    render: -> `(
        <div>
            <form>
                <SearchBar parentCallback={this.handleQueryUpdate}/>
                <SortBar parentCallback={this.handleSortPatternUpdate}/>
            </form>
            <hr/>
            <BookCollection books={this.state.books}/>
        </div>
    )`
