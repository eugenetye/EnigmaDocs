# EnigmaDocs

This is a Python application that allows you to engage in interactive conversations with your PDF documents. 
> IMPORTANT: The app will only respond to questions related to the uploaded PDFs.

## How It Works

![PDF-LangChain](https://github.com/eugenetye/EnigmaDocs/assets/105037989/1da61fac-2e8b-47d5-9441-cefa68990972)


> Credits to [Alejandro AO](https://www.youtube.com/@alejandro_ao) for this amazing architectural breakdown!

The app follows the following steps to provide responses to your questions:

1. Text Extraction: The app reads one or more uploaded PDF documents and extracts their text content.

2. Text Chunking: The extracted texts are split into smaller chunks to be processed.

3. Embeddings: The text chunks are used to create vector representations (embeddings) using an embedding model and are then stored in a vector store.

4. Similarity Matching: Whenever a question is asked, the app embeds it with the same algorithm then compares it with all the embeddings in the vector store. The ones that are most semantically similar will be selected. 

5. Response Generation: The selected chunks are passed to the language model, which generates a response based on the relevant content of the PDFs.

## Getting Started

These instructions will help you set up and run the application on your local machine for development and testing purposes.

1. Clone the repository:
```
git clone https://github.com/eugenetye/rssAggregator.git
cd rssAggregator
```


2. Install the required dependencies:
```
pip install -r requirements.txt
```

4. Obtain an API key from OpenAI and update the .env file using the template given by the .env.example file.
```commandline
OPENAI_API_KEY=YOUR API KEY GOES HERE
```

5. Run the `app.py` file using the following command:
```
streamlit run app.py
```

6. The application will launch in your default web browser on port 8501.

7. Upload one or more PDF documents into the app and you will be able to ask questions in natural language about the uploaded PDFs!

