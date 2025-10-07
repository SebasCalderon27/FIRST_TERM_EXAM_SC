Create the virtual enviroment and run the FastAPI app using the commands from the FastAPI guide, in another terminal window (Git Bash),
execute the attack script — the script’s printed results indicate if the login was successful.

. Virtual Environment Setup
It's crucial to create and activate a virtual environment to keep your project's dependencies isolated.

Task	Command	Explanation
Create Environment	python -m venv .venv	Creates the .venv folder containing the isolated virtual environment.
Activate Environment	source .venv/bin/activate	Activates the virtual environment. Your command prompt will show (.venv).

Note on Activation: If you are using PowerShell on Windows, the activation command is: .\.venv\Scripts\activate

Configuration and Dependency Installation
With the environment active, proceed to install the necessary packages and set up project hygiene.

Task	Command	Explanation
Upgrade PIP	python -m pip install --upgrade pip	Ensures your package manager (pip) is up-to-date.
Ignore Venv	echo "*" > .venv/.gitignore	Creates a .gitignore file inside .venv to prevent committing the environment to Git.
Install FastAPI	pip install "fastapi[standard]"	Installs the FastAPI framework and standard utilities, including the Uvicorn server.
Install Requirements	pip install -r requirements.txt	Installs any remaining dependencies listed in your requirements.txt file.

Running the Server
Your project is now ready to run. This command will launch your API server.

Task	Command	Explanation
Start API	fastapi dev main.py	Starts the server in development mode. This command is a shortcut for uvicorn main:app --reload.


Description of bash

The Bash script iterates over a list of emails and passwords (embedded or read from a file), builds a safely escaped JSON payload for each email/password pair, and posts it with curl to the API’s POST /login on localhost, for every attempt it prints the server response and, if it finds the success string (e.g. "Login exitoso"), prints a clear “FOUND” message, to use it you just run the API, open Git Bash in the project folder, make the script executable and launch it, the script includes a small delay between requests and handles common issues so the API doesn’t receive malformed JSON.
