import React from "react";
import { Lang } from "../../components/lang";
import "../Pages.scss"
export const Fire = ({ index }) => {
  return (
    <div className="Fire">
      <div className="text">
        <h1>{Lang["CtgFireMain"][index]}</h1>
        <p> {Lang["Fire"][index]} </p>
      </div>
      <iframe
        width="560"
        height="315"
        src="https://www.youtube.com/embed/t5tAUVNoEhM"
        title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        allowfullscreen
      ></iframe>
    </div>
  );
};
