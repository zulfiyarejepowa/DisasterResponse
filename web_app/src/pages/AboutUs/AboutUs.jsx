import React from "react";
import "./AboutUs.scss";
import AboutImg from "../../assets/80300.jpg";
function About() {
    return (
        <div className="aboutUs">
                <img src={AboutImg} alt="" />
                <div className="aboutUsText">
                    <p className="text1">Как подготовиться к чрезвычайным ситуациям? А как реагировать 
                        если это всё же случилось? Где мои близкие и друзья? Куда 
                        идти? Куда звонить?
                    </p>
                    <p className="text2">
                        <b>Именно здесь вы получите ответы на эти вопросы!</b> <br /> <br /> На сайте можно
                        получить всю справочную информацию о ЧС и подготовиться к ним. 
                    </p>
                    <p className="text3">А скачав приложение 
                    Disaster Response, {/* название приложения тоже должна быть ссылкой */}
                    сможете связаться со службами спасения, узнать о местоположении 
                    ваших близких и друзей,а также адреса безопасных зон.
                    </p>
                </div>
        </div>
    )
}
export default About