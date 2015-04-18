FilterableBookCollection = React.createClass
    getInitialState: ->
        books: this.props.books

    handleQueryUpdate: (query) ->
        # do something with the query string
        this.setState({ books: this.state.books })

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
