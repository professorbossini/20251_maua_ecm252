// rcc
import React, { Component } from 'react'
import { Button } from 'primereact/button'
import { IconField } from 'primereact/iconfield'
import { InputIcon } from 'primereact/inputicon'
import { InputText } from 'primereact/inputtext'

export default class Busca extends Component {

  state = {
    termoDeBusca: ''
  }
  render() {
    return (
      <div className='flex flex-column'>
        <IconField 
          
          iconPosition='left'>
          <InputIcon  className='pi pi-search'/>
          <InputText className='w-full' placeholder={this.props.dica}/>  
        </IconField>
        <Button 
          className='mt-1'
          label='OK' 
          outlined/>
      </div>
    )
  }
}

Busca.defaultProps = {
  dica: 'Buscar...'
}
