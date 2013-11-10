Description
===========

This cookbook configures the machine to mirror various sources of static files: documentation, websites, RFCs, and other such relatively simple things.

Requirements
============

Platform
--------

* Ubuntu 13.04 (that's all we support at /dev/fort for now, so that's all I've tested.)

Attributes
==========

Cookbook attributes are named under the `file_mirror` namespace.

* `node['file_mirror']['user']` - user to host mirrors as, defaults to `fort`
* `node['file_mirror']['data_dir']` - directory to store the files in, defaults to '/data/files'
* `node['file_mirror']['apache']['listen_hostname']` - Hostname to listen on for Apache virtualhost, defaults to `files.fort`
* `node['file_mirror']['apache']['listen_port']` - Port to listen on for files Apache virtualhost, defaults to '80'
* `node['file_mirror']['command']` - Hash of commands to use when mirroring, and templates for their execution. Defaults are `rsync` and `wget`
* `node['file_mirror']['files']` - Hash of files to mirror. Keyed on friendly name for the subject, each with a hash containing of aliases and URLs for files to mirror.

Recipes
=======

The main entrypoint for this cookbook is the `default` recipe.

Usage
=====

Include `files-mirror` and it will start replicating the files specified by the attributes in `node.file_mirror.files` using the methods specified. This will take a _very_ long time (probably the best part of a day), and require tens of gigabytes of storage. You have been warned.

You can keep an eye on the mirroring progress by running `tail -f /var/log/upstart/files-mirror.log`.
