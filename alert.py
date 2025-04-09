# sending telegram alert 

import argparse
import requests

# Example values – replace with your actual bot token and chat ID
BOT_TOKEN = 'YOUR-TELEGRAM-TOKEN'
CHAT_ID = 'YOUR-CHAT-ID'

def send_telegram_message(message):
    url = f"https://api.telegram.org/bot{BOT_TOKEN}/sendMessage"
    payload = {'chat_id': CHAT_ID, 'text': message}
    response = requests.post(url, data=payload)
    return response.ok

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('-m', '--message', required=True, help='Message to send')
    args = parser.parse_args()

    success = send_telegram_message(args.message)
    if success:
        print("Alert sent successfully.")
    else:
        print("Failed to send alert.")
