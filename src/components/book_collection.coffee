BookCollection = React.createClass
    render: -> `(
        <div>
            {this.props.books.map(function(book, id) {
                return <Book key={id} book={book}/>
            })}
        </div>
    )`
