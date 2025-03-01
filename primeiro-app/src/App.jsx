const App = () => {
  const estilosBotao = {marginTop: 12, paddingTop: 8, paddingBottom: 8, backgroundColor: 'blueviolet', color: 'white', border: 'none', width: '100%', borderRadius: 8}
  const textoDoRotulo = 'Nome:'
  const obterTextoDoBotao = () => {return 'Enviar'}
  const aoClicar = () => alert('Clicou')
  return (
    <div 
      style={{margin: 'auto', width: 768, backgroundColor: '#EEE', padding: 12, borderRadius: 8}}>
      <label
        className="rotulo" 
        htmlFor="nome"
        style={{display: 'block', marginBottom: 4}}>
        {textoDoRotulo}
      </label>
      {/* input[type=text]#nome*/}
      <input 
        type="text" 
        id="nome"
        style={{paddingTop: 8, paddingBottom: 8, borderStyle: 'hidden', width: '100%', borderRadius: 8, outline: 'none'}} />
      {/* button{Enviar} */}
      <button
        onClick={() => aoClicar()}
        style={estilosBotao}>
        {obterTextoDoBotao()}
      </button>
    </div>
  )
}

export default App