import React, { Component } from 'react'
import ReactDOM from 'react-dom';
import Header from '../components/Header';

import '../stylesheets/app.scss'

class App extends Component {
  render() {
    return (
      <div>
       <div id="header">
          <Header/>
        </div>
      </div>
    )
  }
}

export default App;