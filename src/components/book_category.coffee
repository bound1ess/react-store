BookCategory = React.createClass
    getInitialState: ->
        selected: true

    handleClick: ->
        selected = !this.state.selected
        this.setState({ selected })
        this.props.parentCallback(selected, this.props.name.toLowerCase())

    render: -> `(
        <li>
            <a href="#" onClick={this.handleClick}>
                {this.props.name}
                {this.state.selected ? " +" : ""}
            </a>
        </li>
    )`
