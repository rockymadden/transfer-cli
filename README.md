# transfer-cli <sub><sup>| Powerful transfer.sh CLI via pure bash</sup></sub>
[![version](http://img.shields.io/badge/version-v0.2.0-blue.svg)](https://github.com/rockymadden/transfer-cli/releases)
[![versioning](http://img.shields.io/badge/versioning-semver-blue.svg)](http://semver.org/)
[![branching](http://img.shields.io/badge/branching-github%20flow-blue.svg)](https://guides.github.com/introduction/flow/)
[![license](http://img.shields.io/badge/license-mit-blue.svg)](https://opensource.org/licenses/MIT)
[![pm](http://img.shields.io/badge/pm-zenhub-blue.svg)](https://www.zenhub.io/)
[![chat](http://img.shields.io/badge/chat-slack-blue.svg)](https://rockymadden-slack.herokuapp.com/)
[![circleci](https://circleci.com/gh/rockymadden/transfer-cli.svg?style=shield)](https://circleci.com/gh/rockymadden/transfer-cli)

A pure bash, pipe friendly, encryption capable, feature rich, command line interface for
[transfer.sh](https://transfer.sh).

__Upload samples:__

```bash
$ # From file:
$ transfer upload /path/to/file.log
$ transfer upload --file=/path/to/file.log
$ transfer upload --file /path/to/file.log
$ transfer upload -f /path/to/file.log

$ # From directory:
$ transfer upload /path
$ transfer upload --file=/path
$ transfer upload --file /path
$ transfer upload -f /path

$ # From pipe:
$ ls | transfer upload --slug=ls.log
$ ls | transfer upload --slug ls.log
$ ls | transfer upload -s ls.log

$ # With encryption (symmetric):
$ transfer upload /path/to/file.log --encrypt
$ transfer upload /path/to/file.log -e
$ transfer upload /path/to/file.log --encrypt --password password

$ # With custom slug:
$ transfer upload /path/to/file.log custom.log
$ transfer upload --file=/path/to/file.log --slug=custom.log
$ transfer upload --file /path/to/file.log --slug custom.log
$ transfer upload -f /path/to/file.log -s custom.log
```

__Download samples:__

```bash
$ # To file:
$ transfer download https://transfer.sh/abcXYZ/file.log /tmp/file.log
$ transfer download --url=https://transfer.sh/abcXYZ/file.log --file=/tmp/file.log
$ transfer download --url https://transfer.sh/abcXYZ/file.log --file /tmp/file.log
$ transfer download -u https://transfer.sh/abcXYZ/file.log -f /tmp/file.log

$ # To pipe:
$ transfer download https://transfer.sh/abcXYZ/file.tar.gz | tar xz
$ transfer download --url=https://transfer.sh/abcXYZ/file.tar.gz | tar xz
$ transfer download --url https://transfer.sh/abcXYZ/file.tar.gz | tar xz
$ transfer download -u https://transfer.sh/abcXYZ/file.tar.gz | tar xz

$ # With decryption (symmetric):
$ transfer download https://transfer.sh/abcXYZ/file.log --decrypt
$ transfer download https://transfer.sh/abcXYZ/file.log -d
$ transfer download https://transfer.sh/abcXYZ/file.log --decrypt --password password
```

## Installation

### Via `brew`:

```bash
$ brew tap rockymadden/rockymadden
$ brew install transfer-cli
```

### Via `curl`:

```bash
$ curl -O https://raw.githubusercontent.com/rockymadden/transfer-cli/master/src/transfer
$ chmod +x transfer
```

### Via `make`:

```bash
$ git clone git@github.com:rockymadden/transfer-cli.git
$ cd transfer-cli
$ make install bindir=/path/to/bin
```

## Usage
```bash
$ transfer --help
Usage:
  transfer download [<url> [file]]
    [--decrypt|-d] [--file|-f <file>] [--password|-p <password>] [--trace|-x]
    [--url|-u <url>]

  transfer upload [<file> [slug]]
    [--encrypt|-e] [--file|-f <file>] [--password|-p <password>] [--slug|-s <slug>]
    [--trace|-x]

Commands:
  download    Download from transfer.sh to file or piped output
  upload      Upload a file, directory, or piped input to transfer.sh

More Information:
  chat    https://rockymadden-slack.herokuapp.com
  repo    https://github.com/rockymadden/transfer-cli
```

## License
```
The MIT License (MIT)

Copyright (c) 2016 Rocky Madden (https://rockymadden.com/)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
