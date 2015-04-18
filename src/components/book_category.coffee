BookCategory = React.createClass
    getInitialState: ->
        selected: true

    handleClick: (event) ->
        event.preventDefault()
        this.setState({ selected: !this.state.selected })

    render: -> `(
        <li>
            <a href="#" onClick={this.handleClick}>
                {this.props.name}
                {this.state.selected ? " +" : ""}
            </a>
        </li>
    )`
