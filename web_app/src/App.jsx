import React from "react";
import "./App.scss";
import Header from "./components/Header/Header";
import { Routes, Route } from "react-router-dom";
import MainPage from "./pages/Main/mainPage";
import EathQuake from "./pages/EarthQuake/EathQuake";
import { Fire } from "./pages/Fire/Fire";
import { Tornado } from "./pages/Tornado/Tornado";
import { Flooding } from "./pages/Flooding/Flooding";
import Ai from "./pages/AI/Ai";
import Footer from "./pages/Footer/Footer";
import AiButton from "./components/AiButton/AiButton";

function App() {
  const [index, setIndex] = React.useState(0);

  return (
    <>
      <div className="App">
        <Header index={index} set={setIndex} />
        <Routes>
          <Route path="/" element={<MainPage index={index} />} />
          <Route path="/eathquake" element={<EathQuake index={index} />} />
          <Route path="/fire" element={<Fire index={index} />} />
          <Route path="/tornado" element={<Tornado index={index} />} />
          <Route path="/flooding" element={<Flooding index={index} />} />
          <Route path="/ai" element={<Ai index={index} />} />
        </Routes>
        <Footer index={index} />
      </div>
      <AiButton></AiButton>
    </>
  );
}

export default App;
