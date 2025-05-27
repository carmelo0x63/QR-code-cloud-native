# Just a QR Code
Cloud-native version of "Just a QR Code" by "gabe" ([Gabe Schuyler](https://www.gabe-sky.com/)).

From the author's [original page](https://justaqrcode.com/):
<pre>I needed to make a QR code -- again -- and faced with an array of janky free sites,
wondered if I could just create a one-page app to do it on my terms. No ads, no trackers,
no logging what I type, no upsell ... just a qr code.

What I ended up with is this one-page app that's completely yours to control. You can even
download the source to your computer and run it from there. Read through the source if you like.
It doesn't send your data to anyone.

If you found this useful, consider creating something similar of your own.

Be excellent to each other.</pre>

----

This _cloud-native_ version is essentially the same page as [Just a QR Code](https://justaqrcode.com/), with minor modifications, embedded into a [Docker container](https://www.docker.com/resources/what-container/).
The [base image](https://docs.docker.com/build/building/base-images/) is [Alpine Linux](https://alpinelinux.org/) running [Lighttpd](https://www.lighttpd.net/). See also [Lighttpd](https://wiki.alpinelinux.org/wiki/Lighttpd).
The final outcome is a ~15MB image that can be downloaded and run without going through the hassle of installing or configuring anything.

### Prerequisites
- git
- Docker

### Quick(er) start
1. run `docker run -d -p 80:80 carmelo0x63/justaqrcode:1.0`

### Build it from scratch
1. clone repo: `git clone https://github.com/carmelo0x63/QR-code-cloud-native`
2. edit/explore the source code (optional but recommended)
3. build your own image: `docker buildx build -t <repo_name>/<image_name>:<tag> .`
4. spin it up: `docker run -d --rm -p 80:80 --name <container_name> <repo_name>/<image_name>:<tag>`
5. you own QR code generator is available at `http://localhost/qrcode.html`
