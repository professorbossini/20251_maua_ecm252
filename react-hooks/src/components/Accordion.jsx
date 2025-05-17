// rafce
import './Accordion.css'
import React, { useState }from 'react'
import { Card } from 'primereact/card'

const Accordion = ({itens}) => {

  const [indiceAtivo, setIndiceAtivo] = useState(null)

  const itemClicado = (indice) => {
    //atualizar a variável de estado atribuindo o indice a ela
    setIndiceAtivo(indice)
  }

  const expressaoJSX = itens.map((item, indice) => (
    <Card id="accordion" key={indice} className='border-1 border-400'>
      <div onClick={() => itemClicado(indice)}>
        <i className="pi pi-angle-down"></i>
        <h5 className='ml-3 inline'>{item.titulo}</h5>
      </div> 
      <p>
        {item.conteudo}
      </p> 
    </Card>
  ))
  return (
    <div>
      <p>{indiceAtivo}</p>
      {
        expressaoJSX
      }
    </div>
  )
}

export default Accordion