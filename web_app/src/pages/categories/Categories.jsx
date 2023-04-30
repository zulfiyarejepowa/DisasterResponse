import React from "react";
import "./Categories.scss";
import IconEarthquake from "../../assets/earthquake.png";
import IconFire from "../../assets/fire.png";
import IconFlood from "../../assets/tsunami.png";
import IconTyphoon from "../../assets/typhoon.png";
import CtgButton from "../../components/CategoriesButton/CtgButton";
import { Lang } from "../../components/lang";
import { Link } from "react-router-dom";
function Categories({ index } ) {
  return (
    <div className="Categories">
      <div className="CategoryInfo">
        <div className="CategoryText">
        {Lang["AiText"][index]}
        </div>
        <Link to="/ai">
          <button className="CategoryInfoButton">
            <a href="#">{Lang["AiBtn"][index]}</a>
          </button>
        </Link>
      </div>
      <div className="CategoryBlocks">
        <div className="CategoryBlock">
          <img src={IconEarthquake} className="Icon" alt="" />
          <p>{Lang["CtgEthMain"][index]}</p>
          <p className="CategoryBlockText">
          {Lang["CtgEthText"][index]}
          </p>
          <Link to="/eathquake">
            <CtgButton></CtgButton>
          </Link>
        </div>
        <div className="CategoryBlock">
          <img src={IconFire} className="Icon" alt="" />
          <p>{Lang["CtgFireMain"][index]}</p>
          <p className="CategoryBlockText">
          {Lang["CtgFireText"][index]}
          </p>
          <Link to="/fire">
            <CtgButton></CtgButton>
          </Link>
        </div>
        <div className="CategoryBlock">
          <img src={IconFlood} className="Icon" alt="" />
          <p>{Lang["CtgFloodMain"][index]}</p>
          <p className="CategoryBlockText">
          {Lang["CtgFloodText"][index]}
          </p>
          <Link to="/flooding">
            <CtgButton></CtgButton>
          </Link>
        </div>
        <div className="CategoryBlock fourth">
          <img src={IconTyphoon} className="Icon" alt="" />
          <p>{Lang["CtgHrcMain"][index]}</p>
          <p className="CategoryBlockText">
          {Lang["CtgHrcText"][index]}
          </p>
          <Link to="/tornado">
            <CtgButton></CtgButton>
          </Link>
        </div>
      </div>
    </div>
  );
}
export default Categories;
