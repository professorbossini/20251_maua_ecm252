const Redux = require("redux")
const { createStore, combineReducers } = Redux
//escrever uma função criadora de ação
//ela produz uma ação que representa a criação de um novo contrato
const criarContrato = (nome, taxa) => {
  return {
    type: "CRIAR_CONTRATO",
    payload: {
      nome, taxa
    }
  }
}
//escrever uma nova criadora de ação
//ela serve para cancelar contratos, dado um nome
const cancelarContrato = function(nome){
  return {
    type: "CANCELAR_CONTRATO",
    payload: {
      nome
    }
  }
}

//escrever a função para solicitação de cashback
//ela também é criadora de ação
const solicitarCashback = (nome, valor) => ({
  type: "SOLICITAR_CASHBACK",
  payload: {
    nome, valor
  }
})

const historicoDePedidosDeCashback = (historicoDePedidosDeCashbackAtual = [], acao) => {
  return acao.type === "SOLICITAR_CASHBACK" 
  ? [...historicoDePedidosDeCashbackAtual, acao.payload] 
  : historicoDePedidosDeCashbackAtual
}

//resolver a manipulação do caixa, usando somente operadores ternários
const caixa = function(dinheiroEmCaixa = 0, acao){
  return acao.type === "SOLICITAR_CASHBACK"
  ? dinheiroEmCaixa - acao.payload.valor
  : acao.type === "CRIAR_CONTRATO"
  ? dinheiroEmCaixa + acao.payload.taxa
  : dinheiroEmCaixa
}

//fazer o proximo reducer
const contratos = (listaDeContratosAtual = [], acao) => {
  return acao.type === "CRIAR_CONTRATO"
  ? [...listaDeContratosAtual, acao.payload]
  : acao.type === "CANCELAR_CONTRATO"
  ? listaDeContratosAtual.filter(c => c.nome !== acao.payload.nome)
  : listaDeContratosAtual
}

const todosOsReducers =  combineReducers({
  historicoDePedidosDeCashback,
  caixa,
  contratos
})

const store = createStore(todosOsReducers)

store.subscribe(() => console.log(`Estado: ${JSON.stringify(store.getState())}`))
// - Cria um contrato para José
store.dispatch(criarContrato('José', 50))
// - Cria um contrato para Maria
store.dispatch(criarContrato('Maria', 100))
// - Solicita cashback de 10 para Maria
store.dispatch(solicitarCashback('Maria', 10))
// - Solicita cashback de 20 para José
store.dispatch(solicitarCashback('José', 20))
// - Cancela o contrato de Maria
store.dispatch(cancelarContrato('Maria'))
//Detalhe: Após cada atividade, exibir o estado atual