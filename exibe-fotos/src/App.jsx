// import { createClient } from 'pexels'
import pexelsClient from './utils/pexelsClient'
import env from 'react-dotenv'
import Busca from "./components/Busca"
import React from 'react'
import ListaImagens from './components/ListaImagens'
import PexelsLogo from './components/PexelsLogo'
export default class App extends React.Component {

  // pexelsClient = null

  state = {
    photos: []
  }

  onBuscaRealizada = (termo) => {
    pexelsClient.get('/search', {
      params: {
        query: termo,
        per_page: 15
      }
    })
    .then(result => this.setState({photos: result.data.photos}))
  }

  // onBuscaRealizada = (termo) => {
  //   this.pexelsClient.photos.search({
  //     query: termo
  //   })
  //   .then(result => this.setState({photos: result.photos}))
  // }

  // componentDidMount(){
  //   console.log(env.PEXELS_KEY)
  //   this.pexelsClient = createClient(env.PEXELS_KEY)
  // }

  render(){
    return (
      <div 
        className="grid justify-content-center w-9 m-auto border-round border-1 border-200">
          <div className="col-12">
            <PexelsLogo />
          </div>
          <div className="col-12">
            <h4>Exibir uma lista de....</h4>
          </div>
          <div className="col-12">
            <Busca onBuscaRealizada={this.onBuscaRealizada}/>
          </div>
          <div className="col-12">
            <div className="grid">
              <ListaImagens 
                imgStyle={'md:col-6 lg:col-4 xl:col-3'} 
                photos={this.state.photos}/>
            </div>
          </div>
      </div>
    )
  }
}