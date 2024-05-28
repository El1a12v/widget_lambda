import os
import requests

def lambda_handler(event, context):
    # url = os.getenv('API_ENDPOINT')
    url = "https://dev-api-widget.160digital.com/contact/send_to_sf"
    response = requests.get(url)
    print(response)
    return {
        'statusCode': response.status_code,
        'body': response.json()
    }
