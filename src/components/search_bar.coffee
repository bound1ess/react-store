SearchBar = React.createClass
    getInitialState: ->
        query: ""

    onChange: (event) ->
        query = event.target.value
        this.setState({ query })

        # Let the parent component know.
        this.props.parentCallback(query)

    render: -> `(
        <div className="form-group">
            <input
                placeholder="Your search query..."
                className="form-control"
                value={this.state.query}
                onChange={this.onChange}
            />
        </div>
    )`
