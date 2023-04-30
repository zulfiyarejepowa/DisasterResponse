import React from "react";
import "./Home.scss";
import Button from "../../components/HomeButton/Button";
import appStore from "../../assets/apple-logo.png";
import Google from "../../assets/google-play.png";
import main from "../../assets/main.png";
import call from "../../assets/telephone.png"
import { Lang } from "../../components/lang";
function Home({ index }) {
  return (
    <div className="Home">
      <div className="main">
        <div className="text">
          <h1>{Lang["main"][index]}</h1>
          <h2>{Lang["mainText"][index]}</h2>
          <div className="button">
            <Button image={appStore} main="App Store" text="Download on the" />
            <Button image={Google} main="Play Store" text="Download on the" />
          </div>
        </div>
        <div className="image">
          <img src={main} alt="" />
        </div>
      </div>
      
      <a href="tel:+01" className="emergencyButton">
        <img src={call} alt="" />
        <h3>{Lang["mainBtn"][index]}</h3>
      </a>
    </div>
  );
}

export default Home