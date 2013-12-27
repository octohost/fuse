fuse
====

Ubuntu Saucy container containing fuse for octohost. This is due to [several](https://github.com/dotcloud/docker/issues/963) [issues](https://github.com/dotcloud/docker/issues/514) with fuse/Docker interaction. Was solved [here](https://gist.github.com/henrik-muehe/6155333).

To use an already built container:

`docker pull octohost/fuse`

Or you can build it from this source:

`docker build -t your-organization/fuse`
