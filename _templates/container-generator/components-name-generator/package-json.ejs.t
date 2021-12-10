---
to: <%= initiatedProjectPath %>/components-run/src/App.js
---

import React from 'react'

import Components from '<%= packageName %>'

const { Navbar } = Components;

const App = () => {
  return <Navbar menuItems={[
    {
      key: 'dashboard',
      text: 'Dashboard'
    }
  ]}/>
}

export default App
