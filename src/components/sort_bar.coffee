SortBar = React.createClass
    getInitialState: ->
        asc: false

    swapCondition: ->
        asc =! this.state.asc

        this.setState({ asc })
        this.props.parentCallback(asc)

    render: -> `(
        <div className="checkbox">
            <label>
                <input
                    type="checkbox"
                    onChange={this.swapCondition}
                    value={this.state.asc}
                />
                 Show the most expensive books first
            </label>
        </div>
    )`
