FilterableBookCollection = React.createClass
    render: -> `(
        <div>
            <form>
                <SearchBar/>
                <SortBar/>
            </form>
            <hr/>
            <BookCollection books={this.props.books}/>
        </div>
    )`
