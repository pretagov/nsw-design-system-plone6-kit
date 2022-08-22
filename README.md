# nsw-design-system-plone6-kit

The NSW Design System Plone 6 starter kit is an all-in-one solution to quickly get you started with a full [Plone](https://plone.org/) site using the latest v3 version of the [NSW Design System](https://github.com/digitalnsw/nsw-design-system).

## Overview

The starter kit is formed of two parts a REST API backend and a React frontend. See the corresponding sections below for more details.

To get started with the starter kit, [view the demo](https://digitalnsw.pretagov.com.au/) or download the starter kit and run `make start` to try it locally.

[Plone 6 NSW Design System Demo](https://digitalnsw.pretagov.com.au/).

### What is Plone

Plone is an open source, enterprise-grade, all-in-one content management system. Powered by a snappy, modern React front end with a highly extensible and secure backend, Plone offers unparalleled usability, security, and customizability. Plone is run by the Plone Foundation, a non-profit formed by members and companies all over the world with the purpose of promoting and developing Plone. For more information on Plone, visit [plone.org](https://plone.org/) or reach out to the [Plone community](https://plone.org/community).

## Features

- Out-the-box V3 NSW Design System best practises
- Highly customisable page builder
- Fully editable search experience

### Support & Contributing

Feel free to open a [GitHub issue](https://github.com/pretagov/nsw-design-system-plone6-kit/issues) for any bug reports, feature requests or question about hosting. We welcome any and all community contributions and feedback! A contributing guide is in-progress, but highly encourage you to open an issue or get in touch. Support for hosting can be found by [our contributors](#contributors).

## Supported features

### Completed

- [Accordion](https://digitalnsw.pretagov.com.au/demo-pages/accordion)
- [Breadcrumbs](https://digitalnsw.pretagov.com.au/demo-pages)
- [Callout](https://digitalnsw.pretagov.com.au/demo-pages/callout)
- [Cards](https://digitalnsw.pretagov.com.au/demo-pages/cards)
- [Content blocks](https://digitalnsw.pretagov.com.au/demo-pages/content-blocks)
- [Filters](https://digitalnsw.pretagov.com.au/demo-pages/)
- [Footer](https://digitalnsw.pretagov.com.au/demo-pages/)
- [Header](https://digitalnsw.pretagov.com.au/demo-pages/)
- [Hero banner](https://digitalnsw.pretagov.com.au/demo-pages/hero-banner)
- [Images](https://digitalnsw.pretagov.com.au/demo-pages/images)
- [In-page alert](https://digitalnsw.pretagov.com.au/demo-pages/notifications)
- [List items](https://digitalnsw.pretagov.com.au/demo-pages/list-items)
- [Main navigation](https://digitalnsw.pretagov.com.au/demo-pages)
- [Masthead](https://digitalnsw.pretagov.com.au/demo-pages)
- [Results bar](https://digitalnsw.pretagov.com.au/demo-pages/)
- [Search](https://digitalnsw.pretagov.com.au/demo-pages/search)
- [Sections](https://digitalnsw.pretagov.com.au/demo-pages/sections)
- [Videos](https://digitalnsw.pretagov.com.au/demo-pages/videos)

### In progress

- Buttons
- Dialog
- Global alert
- Hero search
- In-page navigation
- Link list
- Pagination
- Progress Indicator
- Side navigation
- Step
- Tables
- Tabs
- Tags

## Getting started

To get started, ensure that the following dependencies are installed:

- [`yarn`](https://yarnpkg.com/getting-started/install)
- [`docker`](https://www.docker.com/)

### Create a site

1. Run `make start` to bootstrap and start both the backend and frontend.
2. Visit `localhost:8080` and create a site with an `id` of `Plone` (default). The default username and password are `admin`.
3. Visit `localhost:3000` to view your new site!

## Frontend

The starter kit frontend is made of two parts: [volto](https://plone.org/what-is-plone/volto) and the [NSW Design System addon](https://github.com/pretagov/nsw-design-system-plone6).

### Versions

The frontend was created using the latest volto version at the time of writing, [16.0.0-alpha.22](https://github.com/plone/volto/releases/tag/16.0.0-alpha.22). The frontend was bootstrapped with the Plone6 yeoman generator. See <https://6.dev-docs.plone.org/volto/getting-started/install.html#install-volto> for more info on created your own frontend.

## Backend

- Currently using Plone 6.0.0b1
- Using [buildout](https://www.buildout.org/en/latest/) to create a backend. See [Install a Plone backend locally without Docker](https://6.dev-docs.plone.org/volto/configuration/backend.html?highlight=buildout#install-a-plone-backend-locally-without-docker) in the Plone manual for more information on how this works.
- Is using [mr.developer](https://pypi.org/project/mr.developer/) to install some addons with git. Development sections are marked in the [buildout config file, `buildout.cfg`](backend/bin/Activate.ps1backend/buildout.cfg).

## Contributors

### PretaGov

PretaGov provide powerful content management systems, intranets, file sharing and collaboration solutions. Having worked with hundreds of public and private sector companies across Australia, PretaGov takes pride in offering strong security, privacy and accessibility compliance in all it's hosting and customisation services. PretaGov can be found on the [buy.nsw service panel](https://suppliers.buy.nsw.gov.au/supplier/profile/637) and more information about their products can be found on the [PretaGov website](https://www.pretagov.com.au/products).