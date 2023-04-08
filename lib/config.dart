const openaiApiKey = "YOUR_OPENAI_API_KEY";
const openaiPrompt =
    "Individua all'interno del seguente testo la domanda e le opzioni fornite come risposta, restituiscimi una stringa (senza spazi) corrispondente ad un oggetto json con questa struttura: {domanda: string, risposte: {risposta1:double,risposta2:double}}. Associa ad ogni risposta la probabilità che quella risposta sia corretta basandoti sulle informazioni che conosci (deve sempre esserci una risposta con la probabilità maggiore delle altre):";
const openaiBasePath = "api.openai.com";
