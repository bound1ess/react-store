BookCategoryList = React.createClass
    getInitialState: ->
        hash = {}
        this.props.list.map((element) -> element.toLowerCase()).forEach((element) ->
            hash[element] = true
        )

        elements: hash

    handleChildUpdate: (state, element) ->
        elements = this.state.elements
        elements[element] = state

        this.props.parentCallback(elements)
        this.setState({ elements })

    render: ->
        # console.log(this.state.elements)
        callback = this.handleChildUpdate

        `(
            <ul className="list-unstyled">
                {this.props.list.map(function(category, id) {
                    return <BookCategory
                        parentCallback={callback}
                        key={id}
                        name={category}
                    />
                })}
            </ul>
        )`
