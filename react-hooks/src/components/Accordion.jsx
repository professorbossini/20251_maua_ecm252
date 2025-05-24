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

  const expressaoJSX = itens.map((item, indice) => {
    //escolher entre down ou right, comparando o indice da vez com o indiceAtivo, usando um ternario
    const classExibirIcone = indice === indiceAtivo ? 'down' : 'right'
    //decidir se o p fica oculto (hidden) ou não (classe nenhuma)
    const classExibirConteudo = indice === indiceAtivo ? '' : 'hidden'
    return(
      <Card id="accordion" key={indice} className='border-1 border-400'>
        <div onClick={() => itemClicado(indice)}>
          <i className={`pi pi-angle-${classExibirIcone}`}></i>
          <h5 className='ml-3 inline'>{item.titulo}</h5>
        </div> 
        <p className={classExibirConteudo}>
          {item.conteudo}
        </p> 
      </Card>
    )
  })
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