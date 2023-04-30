import React from "react";
import { Lang } from "../../components/lang";
import "../Pages.scss"
export const Tornado = ({ index }) => {
  return (
    <div className="Hrc">
      <div className="text">
        <h1>{Lang["CtgHrcMain"][index]}</h1>
        <p> {Lang["Hrc"][index]} </p>
      </div>
      <iframe
        width="560"
        height="315"
        src="https://www.youtube.com/embed/oRbU6LGGvDY"
        title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        allowfullscreen
      ></iframe>
    </div>
  );
};
