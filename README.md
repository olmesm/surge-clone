# Surge Clone

Replicating the features of https://surge.sh with Nginx and Caddy server

_Note:_ This was done late with :beer:; config is a mix between localhost and [lvh.me](https://nickjanetakis.com/blog/ngrok-lvhme-nipio-a-trilogy-for-local-development-and-testing).

Requires:

- [docker](http://docker.com)

Run with `sh run-nginx.sh` or `sh run-caddy.sh`

```bash
curl --location --request GET http://lvh.me # => sites/index.html
curl --location --request GET http://site-1.lvh.me # => sites/site-1/index.html
curl --location --request GET http://site-1.lvh.me/x # => sites/site-1/200.html
curl --location --request GET http://site-1.lvh.me/404 # => sites/site-1/404.html
curl --location --request GET 'http://lvh.me' \
--header 'Host: site-1.local' # => sites/site-1.local/index.html
curl --location --request GET 'http://lvh.me/x' \
--header 'Host: site-1.local' # => sites/50x.html
```

## TODO

- [x] subdomain handling
- [x] cname (host header) handling
- [x] error page
- [x] root page
- [x] 200.(html|json)
- [ ] content type headers
- [ ] auth (oauth2-proxy)
- [ ] ROUTES - custom re-writes
- [ ] CORS
