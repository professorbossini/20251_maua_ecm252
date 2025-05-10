import React from 'react'

const Imagem = ({src, alt, imgStyle}) => {
  return (
    <div className={`${imgStyle} flex justify-content-center`}>
      <img src={src} alt={alt} />
    </div>
  )
}

export default Imagem