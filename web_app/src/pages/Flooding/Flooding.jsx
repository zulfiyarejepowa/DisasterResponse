import React from "react";
import { Lang } from "../../components/lang";
import "../Pages.scss"
export const Flooding = ({ index }) => {
  return (
    <div className="Flood">
      <div className="text">
        <h1>{Lang["CtgFloodMain"][index]}</h1>
        <p> {Lang["Flood"][index]} </p>
      </div>
      <iframe
        width="560"
        height="315"
        src="https://www.youtube.com/embed/gWxUAEJle7E"
        title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        allowfullscreen
      ></iframe>
    </div>
  );
};
