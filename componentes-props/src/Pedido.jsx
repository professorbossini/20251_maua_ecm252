const Pedido = (props) => {
    return (
            <div className="d-flex">
                <div className="d-flex justify-content-center flex-column">
                    <i className={`fa-solid fa-${props.icone} fa-2x`}></i>
                </div>
                <div className="border flex-grow-1 py-3 ms-3">
                    <h4 className="text-center">{props.titulo}</h4>
                    <p className="text-center">{props.descricao}</p>
                </div>
            </div>
    )
}

export default Pedido