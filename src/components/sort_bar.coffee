SortBar = React.createClass
    getInitialState: ->
        asc: true

    swapCondition: ->
        asc =! this.state.asc

        this.setState({ asc })

    render: -> `(
        <div>
            <i>Sorting by price:</i>
            <a href="#" onClick={this.swapCondition}>
                {this.state.asc ? "The cheapest first" : "The most expensive first"}
            </a>
        </div>
    )`
