import React, { Component } from 'react'
import ReactDOM from 'react-dom';

import '../stylesheets/app.scss'

class App extends Component {
  render() {
    return (
      <div>
        <div id="header">
          <Header/>
        </div>

        <div id="banana">
          <TextField />
        </div>
      </div>
    )
  }
}

export default App;