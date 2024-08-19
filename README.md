# Tools - Bacula

David Williamson @ Varilink Computing Ltd

------

Encapsulates the Bacula `bconsole` command within a container. A precursor to building the image for this Docker Compose service is that you have previously built the image for the *host-user* service implemented in the Varilink [Tools - Host User](git@github.com:varilink/tools-host_user.git) repository.

This repository configures the `bconsole` command using the file `private/bconsole.conf`. I do this by using a Git submodule, installed at the path `private/`, which is cloned from a private repository of mine so as not to disclose the sensitive information in `private/bconsole.conf`. Anybody else wanting to use this repository would have to make their own arrangements.
