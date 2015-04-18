Book = React.createClass
    render: ->
        category = this.props.book.category
        category = category.charAt(0).toUpperCase() + category.substring(1)

        `(
            <tr>
                <td>{this.props.book.name}</td>
                <td>{this.props.book.price}</td>
                <td>{category}</td>
            </tr>
        )`
