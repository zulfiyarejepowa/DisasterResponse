// Import dependencies and middlewares 
import express from "express";
import bodyParser from "body-parser";
import cors from "cors";
import {OpenAIApi, Configuration} from "openai"

const configuration = new Configuration({
  organization: "org-uhp3by1J9MPnkHVH8MxRRoTR",
  apiKey: "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"
});
console.log();
const openai = new OpenAIApi(configuration);
const app = express();
const port = 8000;
app.use(bodyParser.json());
app.use(cors());
app.post("/", async (req, res) => {
  const { prompt } = req.body
  console.log(prompt);
  const completion = await openai.createChatCompletion({
    model: "gpt-3.5-turbo",
    messages: [
      {
        role: "user",
        content: `${prompt}`,
      },
    ],
  });
  res.json({
    information : completion.data.choices[0].message
  });

});

app.listen(port,()=>{
    console.log(`http://localhost:${port}`);
})
