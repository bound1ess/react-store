SortBar = React.createClass
    getInitialState: ->
        asc: true

    swapCondition: ->
        asc =! this.state.asc

        this.setState({ asc })

    render: -> `(
        <div className="checkbox">
            <label>
                <input
                    type="checkbox"
                    onChange={this.swapCondition}
                    value={this.state.asc}
                />
                 Show the cheapest books first
            </label>
        </div>
    )`
