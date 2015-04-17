BookCategoryList = React.createClass
    render: -> `(
        <ul className="list-unstyled">
            {this.props.list.map(function(category, id) {
                return <BookCategory key={id} name={category}/>
            })}
        </ul>
    )`
