# eyaml

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with eyaml](#setup)
    * [What eyaml affects](#what-eyaml-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with eyaml](#beginning-with-eyaml)
4. [Usage - Configuration options and additional functionality](#usage)

## Overview

This module manages installation and setup of hiera-eyaml backend for PE puppetserver as well as for command line interface.

## Module Description

It installs hiera-eyaml backend for puppet server and also installs hiera-eyaml gem for CLI.
It creates and manages public and private keys for hiera-eyaml.

It creates the directory /etc/puppetlabs/puppet/secure/keys, manages appropriate file permissions and generates the keys in this directory.

## Setup

### What eyaml affects

1. hiera-eyaml package for puppetserver
2. hiera-eyaml gem for CLI
3. Directory structure /etc/puppetlabs/puppet/secure/keys
4. Public and private keys for hiera-eyaml in /etc/puppetlabs/puppet/secure/keys

### Setup Requirements 

After installing hiera-eyaml from this module edit your hiera.yaml appropriately .

### Beginning with eyaml

1. Declare the classes eyaml and eyaml::keys
2. Edit hiera.yaml to add eyaml backend

## Usage

* include eyaml
* include eyaml::keys

