BookCollection = React.createClass
    render: -> `(
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
