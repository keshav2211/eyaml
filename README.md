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

## Setup

### What eyaml affects

hiera-eyaml package for puppetserver
hiera-eyaml gem for CLI
keys for hiera-eyaml

### Setup Requirements **OPTIONAL**

Edit your hiera.yaml appropriately after installing hiera-eyaml from this module.

### Beginning with eyaml

Declare the classes eyaml and eyaml::keys
Edit hiera.yaml to add eyaml backend

## Usage

include eyaml
include eyaml::keys

## Reference


## Limitations


## Development


## Release Notes/Contributors/Etc **Optional**

