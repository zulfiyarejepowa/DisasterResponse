import React from 'react'
import "./Button.scss"
export default function Button(props) {
  return (
    <>
    <button className='home-button'>
    <img src={props.image} alt=""/>
    <div className='text'><p>{props.text}</p>
    <h3>{props.main}</h3></div>
    </button>
    </>
  )
}
