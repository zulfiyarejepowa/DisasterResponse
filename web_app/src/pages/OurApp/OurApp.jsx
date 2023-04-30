import React from "react";
import "./OurApp.scss";
import app from "./../../assets/app.png";
import Button from "../../components/HomeButton/Button";
import { Lang } from "../../components/lang";

export default function OurApp({ index }) {
  return (
    <div className="OurApp">
      <div className="logo">
        <img src={app} alt="" />
      </div>
      <div className="text">
        <h1>
        {Lang["AppMain"][index]} <br /> <span>Disaster Response</span>
        </h1>
        <p>
        {Lang["AppText"][index]}
        </p>
        <button>{Lang["AppBtn"][index]}</button>
      </div>
    </div>
  );
}
