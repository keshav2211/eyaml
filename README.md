# eyaml

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with eyaml](#setup)
    * [What eyaml affects](#what-eyaml-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with eyaml](#beginning-with-eyaml)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This module manages installation and setup of hiera-eyaml backend for PE puppetserver as well as for command line interface.

## Module Description

It installs hiera-eyaml backend for puppet server and also installs hiera-eyaml gem for CLI.
It creates and manages public and private keys for hiera-eyaml.

It creates the directory /etc/puppetlabs/puppet/secure/keys, manages appropriate file permissions and generates the keys in this directory.

## Setup

### What eyaml affects

hiera-eyaml package for puppetserver
hiera-eyaml gem for CLI
Directory structure /etc/puppetlabs/puppet/secure/keys
Public and private keys for hiera-eyaml in /etc/puppetlabs/puppet/secure/keys

### Setup Requirements 

After installing hiera-eyaml from this module edit your hiera.yaml appropriately .

### Beginning with eyaml

Declare the classes eyaml and eyaml::keys
Edit hiera.yaml to add eyaml backend

## Usage

include eyaml
include eyaml::keys

