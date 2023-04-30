import React from "react";
import "./Footer.scss";
import logo from "../../assets/logo1.png";
import Button from "../../components/HomeButton/Button";
import appStore from "../../assets/apple-logo.png";
import Google from "../../assets/google-play.png";
import { Lang } from "../../components/lang";
function Footer( { index } ) {
    return (
        <div>
        <div className="Footer">
            <div className="FooterLogo">
                <img src={logo} alt="" />
            </div>
            <div className="FooterNav">
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
            </div>
            <div className="FooterApps">
                <p> {Lang["LinkApp"][index]} </p>
                <Button image={appStore} main="App Store" text="Download on the" />
                <Button image={Google} main="Play Store" text="Download on the" />
            </div>
            <div className="FooterButtons">
                <button className="CategoryInfoButton"><a href="#">{Lang["AiBtn"][index]}</a></button>
            </div>  
        </div>
        <div className="EndOfSite">
            <p>Made by WebTech</p>
        </div>
        </div>
    )
}
export default Footer