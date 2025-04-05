// rcc
import React, { Component } from 'react'

export default class Loading extends Component {
  render() {
    return (
      <div className='d-flex flex-column justify-content-center align-items-center border rounded p-3'>
        <div 
          className='spinner-border text-primary'
          style={{width: '3rem', height: '3rem'}}>
        </div>
        <p className="p-3 text-primary">{this.props.mensagem}</p>
      </div>
    )
  }
}

Loading.defaultProps = {
  mensagem: 'Aguardando...'
}


