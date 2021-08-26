
import React from 'react'
import ReactDOM from 'react-dom'


const e = React.createElement

class Hello extends React.Component {
    render() {
        return e('div', null, `Hello ${this.props.toWhat}`);
    }
}

ReactDOM.render(
    e(Hello, { toWhat: 'React' }, null),
    document.getElementById('react')
)