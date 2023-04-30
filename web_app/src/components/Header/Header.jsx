import React from "react";
import "./Header.scss";
import logo from "../../assets/logo1.png";
import lang from "../../assets/internet.png";
import { Lang } from "../lang";

// import { RiCloseLine } from 'react-icons/ri';
function Header({ index, set }) {
  const [hiddens, setHiddens] = React.useState(false);
  
  return (
    <div className="Header">
       <a href="/"><img src={logo} alt="" /></a>
      <ul>
        <li>
          <a href="">{Lang['Home'][index]}</a>
        </li>
        <li>
          <a href="">{Lang['Catigories'][index]}</a>
        </li>
        <li>
          <a href="">{Lang['About Us'][index]}</a>
        </li>
      </ul>
      {/* <ul style={{visibility:"hidden"}}>
        <li>
          <a href="">Главное</a>
        </li>
        <li>
          <a href="">Категории</a>
        </li>
        <li>
          <a href="">О нас</a>
        </li>
      </ul> */}
      <div className="lang">
      
        <p className={index == 0 && 'active'} onClick={() => set(0)}>RU</p>
        <p className={index == 1 && 'active'} onClick={() => set(1)}>EN</p>
        <p className={index == 2 && 'active'} onClick={() => set(2)}>TM</p>
        </div>
      </div>
    
  );
}
export default Header;
