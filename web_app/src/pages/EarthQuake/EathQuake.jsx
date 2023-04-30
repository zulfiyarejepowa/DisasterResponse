import React from "react";
import { Lang } from "../../components/lang";
import "../Pages.scss"
const EathQuake = ({ index }) => {
  return (
    <div className="EathQuake">
      <div className="text">
        <h1>{Lang["CtgEthMain"][index]}</h1>
        <p> {Lang["Ea"][index]} </p>
      </div>
      <div className="video">
        <iframe
          width="560"
          height="315"
          src="https://www.youtube.com/embed/9yijOn9gi64"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowfullscreen
        ></iframe>
      </div>
    </div>
  );
};

export default EathQuake;
