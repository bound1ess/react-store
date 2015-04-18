BookCategory = React.createClass
    handleClick: -> alert(this.props.name)

    render: -> `<li><a onClick={this.handleClick} href="#">{this.props.name}</a></li>`
