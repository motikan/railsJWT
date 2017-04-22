#### HS256
```
$ curl -X "POST" "http://example.jp:3000/user_token" \
> -H "Content-Type: application/json" \
> -d '{"auth": {"email": "user1@example.com", "password": "passwd1"}}'

{"jwt":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE0OTI5NDk3OTksInN1YiI6NX0.U8lm-D4Am4DTgPgdlp35ktcBVXNFS7kaD5FRz9ozLxI"}
```

#### none
```
$ curl -X "POST" "http://example.jp:3000/user_token" \
> -H "Content-Type: application/json" \
> -d '{"auth": {"email": "user1@example.com", "password": "passwd1", "alg": "none"}}'

{"jwt":"eyJ0eXAiOiJKV1QiLCJhbGciOiJub25lIn0.eyJleHAiOjE0OTI5NDk4MzYsInN1YiI6NX0."}
```

#### HS512
```
$ curl -X "POST" "http://example.jp:3000/user_token" \
> -H "Content-Type: application/json" \
> -d '{"auth": {"email": "user1@example.com", "password": "passwd1", "alg": "hs512"}}'

{"jwt":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJleHAiOjE0OTI5NDk4NjYsInN1YiI6NX0._mggXhmZr-mnXiehEbtcZdCxyKB8xqpctQqZs0SKwLFOZRTE_OcAxjxexALGm8XJp_5vVm3xX6Pv39ZbtZ2cZg"}
```