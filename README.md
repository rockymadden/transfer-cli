# transfer-cli <sub><sup>| Powerful transfer.sh CLI via pure bash</sup></sub>
[![version](http://img.shields.io/badge/version-v0.0.0-blue.svg)](https://github.com/rockymadden/transfer-cli/releases)
[![versioning](http://img.shields.io/badge/versioning-semver-blue.svg)](http://semver.org/)
[![branching](http://img.shields.io/badge/branching-github%20flow-blue.svg)](https://guides.github.com/introduction/flow/)
[![license](http://img.shields.io/badge/license-mit-blue.svg)](https://opensource.org/licenses/MIT)
[![pm](http://img.shields.io/badge/pm-zenhub-blue.svg)](https://www.zenhub.io/)
[![chat](http://img.shields.io/badge/chat-slack-blue.svg)](https://rockymadden-slack.herokuapp.com/)
[![circleci](https://circleci.com/gh/rockymadden/transfer-cli.svg?style=shield)](https://circleci.com/gh/rockymadden/transfer-cli)

A pure bash, pipe friendly, feature rich, command line interface for
[transfer.sh](https://transfer.sh) with encryption options coming soon.

__Upload:__

```bash
$ # From file via argument:
$ transfer upload /path/to/file.log
######################################################################## 100.0%
https://transfer.sh/abcXYZ/file.log

$ # From file via option:
$ transfer upload --file /path/to/file.log
######################################################################## 100.0%
https://transfer.sh/abcXYZ/file.log

$ # From file via short form option:
$ transfer upload -f /path/to/file.log
######################################################################## 100.0%
https://transfer.sh/abcXYZ/file.log

$ # From directory:
$ transfer upload /path
######################################################################## 100.0%
https://transfer.sh/abcXYZ/path.tar.gz

$ # From piped input:
$ ls | transfer upload --slug ls.log
######################################################################## 100.0%
https://transfer.sh/abcXYZ/path.tar.gz

$ # Custom slug via argument:
$ transfer upload /path/to/file.log custom.log
######################################################################## 100.0%
https://transfer.sh/abcXYZ/custom.log

$ # Custom slug via option:
$ transfer upload /path/to/file.log --slug custom.log
######################################################################## 100.0%
https://transfer.sh/abcXYZ/custom.log
```

__Download:__

```bash
$ # To file via argument:
$ transfer download https://transfer.sh/abcXYZ/file.log /tmp/file.log
######################################################################## 100.0%
/tmp/file.log

$ # To file via option:
$ transfer download https://transfer.sh/abcXYZ/file.log --file /tmp/file.log
######################################################################## 100.0%
/tmp/file.log

$ # To piped output:
$ transfer download https://transfer.sh/abcXYZ/file.tar.gz | tar xz
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
    [--file|-f <file>] [--trace|-x] [--url|-u <url>]

  transfer upload [<file> [slug]]
    [--file|-f <file>] [--slug|-s <slug>] [--trace|-x]

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
