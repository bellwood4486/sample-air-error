# Sample for reproduction of cosmtrek/air

## Summary

air fails to execute a process, when setting up with `go install`
```Dockerfile
FROM golang:1.16-alpine
# ...snip...
RUN go install github.com/cosmtrek/air@latest
# ...snip...
```

But air works, when doing with `go get`
```Dockerfile
FROM golang:1.16-alpine
# ...snip...
RUN go get -u github.com/cosmtrek/air
# ...snip...
```

## How to reproduce

```shell
make build
make run
```

## Result

air fails to execute a process.
```
  __    _   ___  
 / /\  | | | |_) 
/_/--\ |_| |_| \_ v1.12.1 // live reload for Go apps, with Go1.14.0

watching .
!exclude tmp
building...
failed to build, error: fork/exec /bin/sh: Setctty set but Ctty not valid in child

```
