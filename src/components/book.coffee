Book = React.createClass
    render: -> `(
        <tr>
            <td>{this.props.book.name}</td>
            <td>{this.props.book.price}</td>
        </tr>
    )`
