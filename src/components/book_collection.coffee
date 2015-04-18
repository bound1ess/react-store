BookCollection = React.createClass
    render: ->
        if this.props.books.length > 0
            `(
                <table className="table table-bordered">
                    <thead>
                        <tr>
                            <th>Name</th>
                        </tr>
                    </thead>

                    <tbody>
                        {this.props.books.map(function(book, id) {
                            return <Book key={id} book={book}/>
                        })}
                    </tbody>
                </table>
            )`
        else
            `(
                <div className="alert alert-danger">
                    No books were found matching your conditions.
                </div>
            )`
