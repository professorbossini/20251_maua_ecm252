// rcc
import React, { Component } from 'react'

export default class EstacaoClimatica extends Component {

    timer = null

    state = {
        data: null
    }

    componentDidMount(){
        this.timer = setInterval(() => {
            //atualizar o estado, extraindo nova data do sistema, lembre=se de formatá-la de alguma forma
            this.setState({
                data: new Date().toLocaleTimeString()
            })
        }, 1000)
        console.log(this.timer)
    }

    componentWillUnmount(){
        clearInterval(this.timer)        
    }

    render() {
        console.log('EC: render')
        return (
            <div className="card">
                <div className="card-body">
                    <div
                        className="d-flex align-items-center border rounded mb-2"
                        style={{ height: '6rem' }}>
                        <i className={`fas fa-5x fa-${this.props.icone}`}></i>
                        <p className="w-75 ms-3 text-center fs-1">
                            {this.props.estacao}
                        </p>
                    </div>
                    <div>
                        <p className="text-center">
                            {
                                this.props.latitude ?
                                    `Coordenadas: ${this.props.latitude}, ${this.props.longitude}. Data: ${this.state.data}`
                                :
                                    'Clique no botão para saber a sua estação'

                            }
                        </p>
                    </div>
                    <button
                        type="button"
                        className='btn btn-primary w-100 mt-3'
                        onClick={() => this.props.obterLocalizacao()}>
                        Qual a minha estação?
                    </button>
                </div>
            </div>
        )
    }
}
