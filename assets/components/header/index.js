import React from 'react'
import ReactDOM from 'react-dom'
import Navigation from '../navigation'

import './header.scss'

function Header() {
  return <div>
    <Navigation />
  </div>
}

ReactDOM.render(<Header />, document.getElementById('header'));