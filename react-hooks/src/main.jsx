import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import App from './App.jsx'
import 'primeflex/primeflex.min.css'
import 'primeicons/primeicons.css'
import 'primereact/resources/primereact.min.css'
import 'primereact/resources/themes/fluent-light/theme.css'
createRoot(document.getElementById('root')).render(
  <StrictMode>
    <App />
  </StrictMode>,
)
