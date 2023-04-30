import React from "react";
import Home from "../Home/Home";
import Categories from "../categories/Categories";
import OurApp from "../OurApp/OurApp"
export default function MainPage({index}) {
  return (
    <div className="mainPage">
      <Home index = {index}/>
      <Categories index = {index}/>
      
      <OurApp index = {index}/>
    </div>
  );
}
