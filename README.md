# v2ray-docker-client

A cross-platform 4MB client running **v2ray** client for any version.

Docker Hub Page: [monius/v2ray](https://hub.docker.com/r/monius/v2ray)

Attention: There is no <span style="color:red"> *config.json* </span> inside this image.

## Download

`docker pull monius/v2ray`

## Usage

You need to prepare your `config.json` file yourself. Make sure `listen: 0.0.0.0`.

### Windows

suppose your `config.json` location is `D:\Downloads\v2ray\config.json`, and the inbound port is `1080`.

- `cd D:\Downloads\v2ray`
- `docker run --name v2 -v %CD%:/etc/v2ray -d -p 1080:1080 monius/v2ray:client`

### Linux/Unix/MacOS

suppose your `config.json` location is `/opt/v2ray/config.json`, and the inbound port is `1080`.

- `cd /opt/v2ray`
- `docker run --name v2 -v $PWD:/etc/v2ray -d -p 1080:1080 monius/v2ray:client`

### Specific version

By add environment variable `VER` , for example `3.0` with `-e VER=3.0`.

- `docker run --name v2 -v $PWD:/etc/v2ray -e VER=3.0 -d -p 1080:1080 monius/v2ray:client`

## Tags

- monius/v2ray:client (Test passed)

## Builds

- `v2ray:client`: [Tags/client](https://github.com/Mon-ius/v2ray-docker-client/blob/master/tags/client/Dockerfile)

## Tips

Attention: These are just examples, and it may <span style="color:red"> *not* </span> work at all. (e.g monius/v2ray:client)

- Run an image with name : `docker run --name v2 monius/v2ray:client`
- Running in background (without output) : `docker run -d monius/v2ray:client`
- Map ports from docker to host : `docker run -p 1080:1080 -p 1081:1081 monius/v2ray:client`
- Reflect host folder to docker: `docker run  -v $PWD:/etc/v2ray monius/v2ray:client`

## MIT License

Copyright (c) 2019 Monius

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
