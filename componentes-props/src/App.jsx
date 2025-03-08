import Pedido from "./Pedido"
const App = () => {
  return (
    // div.rotulo.titulo#abc{oi}[style=""]
    <div className="container border mt-2">
      <div className="row">

        <div className="col-lg-6 col-xxl-3">

          <Pedido
            data={new Date().toDateString()}
            titulo="SSD"
            descricao="Um SSD de 512Gb"
            icone="hdd" />

        </div>

        <div className="col-lg-6 col-xxl-3">

          <Pedido
            data={new Date().toDateString()}
            titulo="Livro"
            descricao="Harry Potter"
            icone="book" />

        </div>

        <div className="col-lg-6 col-xxl-3">

          <Pedido
            data={new Date().toDateString()}
            titulo="Hipopótamo"
            descricao="Sim, um hipo! :)"
            icone="hippo" />

        </div>

        <div className="col-lg-6 col-xxl-3">

          <Pedido
            data={new Date().toDateString()}
            titulo="Um boneco de neve"
            descricao="Um boneco de neve que balança sozinho"
            icone="snowman fa-shake" />

        </div>

      </div>

    </div>
  )
}

export default App