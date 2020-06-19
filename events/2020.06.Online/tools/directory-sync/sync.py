import os, json, requests, glob

ENDPOINT=os.environ['ENDPOINT'] # directory root endpoint
AUTH=os.environ['AUTHORIZATION'] # authorization header
TTL=os.environ['TTL'] # seconds

files = glob.glob('./**/*.jsonld', recursive=True)

# create a TD or update an existing one
def put(td):
    url = ENDPOINT+'/td/'+td['id']
    print('PUT', url)
    res = requests.put(url, data=json.dumps(td).encode('utf-8'), headers={'Authorization':AUTH})
    print('Response:', res.status_code, res.reason)

    if res.text != "":
        print('Response body:\n', json.dumps(json.loads(res.text), indent=4))
    
    return res.status_code

# create a TD
def post(td):
    url = ENDPOINT+'/td'
    print('POST', url)
    res = requests.post(url, data=json.dumps(td).encode('utf-8'), headers={'Authorization':AUTH})
    print('Response:', res.status_code, res.reason)
    if res.status_code == 201:
        print('Generated ID:', res.headers['Location'])

    if res.text != "":
        print('Response body:\n', json.dumps(json.loads(res.text), indent=4))
    
    return res.status_code

def submit(td):
    if 'id' in td:
        print('ID:', td['id'])
        code = put(td)
    else:
        print("--> TD has no ID. Will POST.")
        code = post(td)

    
    if code == 400:
        print('\nValidate the TD explicitly:')
        validate(td)


# validate a TD
def validate(td):
    url = ENDPOINT+'/validation'
    print('GET', url)
    res = requests.get(url, data=json.dumps(td).encode('utf-8'), headers={'Authorization':AUTH})
    print('Validation results:\n', json.dumps(json.loads(res.text), indent=4))


for filename in files:
    print('File:', filename)
    with open(filename) as f:
        td = json.loads(f.read())

        # inject ttl
        td['ttl']=int(TTL)

        try:
            submit(td)
        except requests.exceptions.RequestException as e:
            raise SystemExit(e)
    
    print('----------\n')