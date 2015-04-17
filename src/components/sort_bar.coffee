SortBar = React.createClass
    getInitialState: ->
        conditions:
            price: "asc"

    swapCondition: (id) ->
        conditions = this.state.conditions

        if conditions[id] is "asc"
            conditions[id] = "desc"
        else
            conditions[id] = "asc"

        setState({ conditions })

    render: -> `(
        <div>
            <i>Sorting by price:</i>
            <a href="#" onClick={this.swapCondition("price")}>
                {price == "asc" ? "The cheapest first" : "The most expensive first"}
            </a>
        </div>
    )`
