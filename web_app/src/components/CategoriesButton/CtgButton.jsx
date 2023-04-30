import React from 'react'
import "./CtgButton.scss"
import img from "../../assets/right.png"
export default function CtgButton() {
  return (
    <>
        <button className='CtgButton'><img src={img} alt="" /> </button>
    </>
  )
}
