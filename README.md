# nsw-design-system-plone6-kit

The [NSW Design System Plone 6 starter kit](https://digitalnsw.pretagov.com.au/) is an all-in-one solution to quickly get you started with a fully [NSW Gov Branding complaint](https://www.nsw.gov.au/branding/nsw-government-brand-framework)
site using the latest v3 version of the [NSW Design System](https://github.com/digitalnsw/nsw-design-system) and the flexibility and security of [Plone 6](https://plone.org/what-is-plone/plone/plone-6) at your editors fingertips. 

## Overview

The starter kit is formed of two parts a REST API backend and a React frontend. See the corresponding sections below for more details.

To get started with the starter kit, [view the demo](https://digitalnsw.pretagov.com.au/) or download the starter kit and run `make start` to try it locally.

[Plone 6 NSW Design System Demo](https://digitalnsw.pretagov.com.au/).


### Who should use the NSW Design System
#### Branding Compliance: 
Using a tookkit like the [NSW Design System Plone 6 starter kit](https://digitalnsw.pretagov.com.au/) is one of the fastest ways to comply to the [NSW Gov Branding guidelines](https://www.nsw.gov.au/branding/nsw-government-brand-framework)

#### Accessibility
Good implimentations of the [NSW Design System](https://github.com/digitalnsw/nsw-design-system) inherit it's WCAG compliants
#### Excellent User experience: 
Masterbrand or Independent both benefit from consistent and well designed forms and visual components

### Why [Plone 6](https://plone.org/what-is-plone/plone/plone-6)
#### For the public
Blazing Fast React based rendering means both search engines and users find information more quickly
#### For Editors
Layout Control via the [most advanced Open Source WYSIWYG component based editor](https://plone.org/what-is-plone/plone/plone-6) means editors can communicate in the most effective and visually appealing way. [Try the Plone 6 Editor now](https://6.demo.plone.org/).
#### For Developers
React with a mature headless CMS makes adding custom functionality fast and cost effective. No code content types reduce coding required.

#### For DevOps
Modern docker based deployment, [security patch support for 2 major versions](https://plone.org/security/hotfixes/) and the move away from Python 2.7 which no longer has security patch support.

### Why Plone
#### Best Security
There is a reason Plone is trusted by CIA, FBI and others. [Plone's Security track record](https://plone.org/security) is unparalleled with over 20years and no major security breaches. Python 3 on the backend enhances security.
#### For Content governance
Packed with features for large organisations to keep content consistent and up to date like Fine grained permissions, customisable workflow, mutliple draft support, content rules and multilingual.

#### All inclusive
Custom Search with filters, form builders, component based content editor, SEO optimisation, Workflow... all free. No hidden paid features.
#### Future Proof
Foundation Open source means you get an ecosystem of integrators and an [ecosystem of plugins](https://plone.org/download/add-ons) available for free and no single company who can cancel your IT investment with a single decision.


### Support & Contributing

For more information on Plone, visit [plone.org](https://plone.org/) or reach out to the [Plone community](https://plone.org/community).

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
