BookCategoryList = React.createClass
    render: -> `(
        <ul class="list-unstyled">
            {this.props.list.map(function(category, id) {
                <BookCategory key={id} name={category}/>
            })}
        </ul>
    )`
