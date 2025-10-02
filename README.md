Create the virtual enviroment and run the FastAPI app using the commands from the FastAPI guide, in another terminal window (Git Bash),
execute the attack script — the script’s printed results indicate if the login was successful.
<img width="846" height="424" alt="image" src="https://github.com/user-attachments/assets/201aa484-82d3-490a-ba4a-78e1c52a7359" />

Operation of API
<img width="467" height="359" alt="image" src="https://github.com/user-attachments/assets/c8f56481-2591-4245-8d42-7f62afe9501f" />

Description of bash

The Bash script iterates over a list of emails and passwords (embedded or read from a file), builds a safely escaped JSON payload for each email/password pair, and posts it with `curl` to the API’s `POST /login` on `localhost`, for every attempt it prints the server response and, if it finds the success string (e.g. `"Login exitoso"`), prints a clear “FOUND” message, to use it you just run the API, open Git Bash in the project folder, make the script executable and launch it, the script includes a small delay between requests and handles common issues so the API doesn’t receive malformed JSON.
