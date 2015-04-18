FilterableBookCollection = React.createClass
    getInitialState: ->
        books: this.props.books

    handleQueryUpdate: (query) ->
        query = query.toLowerCase()
        books = this.props.books.filter((book) -> book.name.toLowerCase().indexOf(query) > -1)
        this.setState({ books })

    handleSortPatternUpdate: (pattern) ->
        # do something with the pattern
        this.setState({ books: this.state.books })

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
