import Pedido from "./Pedido"
import Cartao from "./Cartao"
import Feedback from "./Feedback"
const App = () => {
  const textoOK = 'Já chegou'
  const textoNOK = 'Não chegou ainda'
  const funcaoOK = () => alert('Agradecemos a confirmação')
  const funcaoNOK = () => alert('Verificaremos o ocorrido')
  const componenteFeedback = (
    <Feedback 
      textoOK={textoOK}
      textoNOK={textoNOK}
      funcaoOK={funcaoOK}
      funcaoNOK={funcaoNOK}
    />
  )
  return (
    // div.rotulo.titulo#abc{oi}[style=""]
    <div className="container border mt-2">
      <div className="row">

        <div className="col-lg-6 col-xxl-4">

          <Cartao
            cabecalho={new Date().toDateString()}>
            <Pedido
              titulo="SSD"
              descricao="Um SSD de 512Gb"
              icone="hdd" />
              {componenteFeedback}
          </Cartao>


        </div>

        <div className="col-lg-6 col-xxl-4">

          <Cartao
            cabecalho={new Date().toDateString()}>
            <Pedido
              titulo="Livro"
              descricao="Harry Potter"
              icone="book" />
              {componenteFeedback}
          </Cartao>

        </div>

        <div className="col-lg-6 col-xxl-4">
          
          <Cartao
            cabecalho={new Date().toDateString()}>
          <Pedido
            titulo="Hipopótamo"
            descricao="Sim, um hipo! :)"
            icone="hippo" />
            {componenteFeedback}
          </Cartao>

        </div>

        <div className="col-lg-6 col-xxl-4">
          <Cartao
            cabecalho={new Date().toDateString()}>
            <Pedido
              titulo="Um boneco de neve"
              descricao="Um boneco de neve que balança sozinho"
              icone="snowman fa-shake" />
              {componenteFeedback}
          </Cartao>

        </div>

      </div>

    </div>
  )
}

export default App