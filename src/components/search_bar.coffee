SearchBar = React.createClass
    getInitialState: ->
        query: ""

    onChange: ->
        query = this.state.query
        setState({ query })

    render: -> `<input value={this.state.query} onChange={this.onChange}/>`
