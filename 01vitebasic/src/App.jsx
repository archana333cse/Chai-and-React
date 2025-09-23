import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import Hello from './hello.jsx'

function App() {
  const [count, setCount] = useState(0)

  return (
    <div>
      <h1>Welcome to React with Vite</h1>
     <Hello />
     
    </div>
    
 
     
   
  )
}

export default App
