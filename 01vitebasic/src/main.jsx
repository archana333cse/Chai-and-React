import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.jsx'

function MyAPP(){
  return(
     <div>
    <h2>Custom App!</h2>
    </div>
  )
   
  
}

const element=(
  <a href="https://google.com" target='_blank'>Visit Google</a>
)

createRoot(document.getElementById('root')).render(
 /*  <StrictMode>
    <MyAPP />
    <App/>
  </StrictMode>, */
  element
)
