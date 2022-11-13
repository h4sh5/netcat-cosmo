# Netcat ported to cosmopolitan libc

Currently functionality is quite limited for Windows, there are some strange quirks (such as `fcntl` won't work for Windows, I've just muted out the error)

But it does build, and it does do stuff on windows (doesn't just completely crash). Maybe it will be fixed later, who knows.

## build and run

build:

`./cosmo_build.sh`

run:

`./netcat.com`

## original README

(from https://netcat.sourceforge.net, version 0.71)

I probably got the not-so-updated version of netcat to port, but hey, like most C programs written for \*nix, it still works just fine on every other unix system)


```
        README
        Part of the GNU netcat project

        Copyright (C) 2002 - 2004  Giovanni Giacobbi

        This program is free software; you can redistribute it and/or modify
        it under the terms of the GNU General Public License as published by
        the Free Software Foundation; either version 2, or (at your option)
        any later version.

        This program is distributed in the hope that it will be useful,
        but WITHOUT ANY WARRANTY; without even the implied warranty of
        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
        GNU General Public License for more details.


Netcat is a featured networking utility which reads and writes data across
network connections, using the TCP/IP protocol.
It is designed to be a reliable "back-end" tool that can be used directly or
easily driven by other programs and scripts. At the same time, it is a
feature-rich network debugging and exploration tool, since it can create
almost any kind of connection you would need and has several interesting
built-in capabilities.

This file will be written soon or late...
```

