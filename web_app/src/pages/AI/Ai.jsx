import { useState } from "react";
import send from "../../assets/sendAi.png"

import "./Ai.scss";

function Ai() {
  const [prompt, setPrompt] = useState("");
  const [prompt2, setPrompt2] = useState("");
  const [response, setResponse] = useState([]);
  const [visible, setVisible] = useState(false);
  // const [loading, setLoading] = useState(false);


  const handleSubmit = async(e) => {  
  setPrompt2(prompt)
  setPrompt('')
    e.preventDefault();
    // await setLoading(true);

    // communicate with API
    // post input value 'prompt' to API end point
    await fetch("https://chatai-2-0.onrender.com/", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      message: prompt,
    }),
  })
    .then((res) => res.json())
    .then((data)=>{
      setResponse(data.information.content)
    })
    setVisible(true)
  
   
  };
  return (
    <div className="Ai">
      <form onSubmit={handleSubmit}>
        <input
          type="text"
          value={prompt}
          onChange={(e) => setPrompt(e.target.value)}
          placeholder="Запросите что нибудь..."
        />
        <button type="submit">SEND</button>
      </form>
      <div className="chat">
        {visible && 
      <p className="propt">{prompt2}</p>
        
        }
        {visible && 
      <p className="response-area"> {response}</p>
        
        }
     </div>
    </div>
  );
}

export default Ai;
