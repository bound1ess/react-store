FilterableBookCollection = React.createClass
    render: -> `(
        <div>
            <SearchBar/>
            <SortBar/>
            <BookCollection books={this.props.books}/>
        </div>
    )`
