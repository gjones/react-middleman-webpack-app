import React, { Component } from 'react'
import ReactDOM from 'react-dom'

import './navigation.scss'

class Navigation extends Component {
  render() {
    return (
      <nav>
        <ul>
          <li>
            <a href="#">Opt 1</a>
          </li>
          <li>
            <a href="#">Opt 3</a>
          </li>
          <li>
            <a href="#">Opt 3</a>
          </li>
        </ul>
      </nav>
    )
  }
}

export default Navigation