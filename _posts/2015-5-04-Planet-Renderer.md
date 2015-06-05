---
layout: banner
title: Planet Renderer
banner: /img/posts/planet-renderer/banner.png
tags: ['Graphics']
---

Planet Renderer
=================

Planet Renderer is the final project for CS384G Computer Graphics.

It is a group project and many thanks to Xinya Zhang for his generous help. He devoted much time into compatibility of OpenGL 3.3 core profile with QT5 and QML across different platforms, and designed a complicated tile system for large terrain generation. However, we do not have enough time to integrate the whole part of his implementation into our project. Still, this project would not be as complete without his participation.

In this project, we implemented random terrain generation and level of detail based on [CDLOD](http://www.vertexasylum.com/downloads/cdlod/cdlod_latest.pdf).
Furthermore, we refined the terrain rendering with bump mapping using a technique called fractal Brownian Motion(fBm). Following is a snapshoot of terrain rendering:
 
![CDLOD Terrain](/img/posts/planet-renderer/snapshot6.png)

In addition to terrain, we also implemented the ocean, with referencing from (GPU Gems: Effective Water Simulation from Physical Models)[http://http.developer.nvidia.com/GPUGems/gpugems_ch01.html]. In this project, we hard coded the parameters for waves: we put in total 8 waves, 4 out of which are choppy waves that add details to the ocean. One advance would be to add wave controls integration into UI. The implementation of shadow comes from two-pass rendering. Here is a snapshot for ocean rendering:

![Ocean](/img/posts/planet-renderer/snapshot5.png)

One can also navigate to the underwater world. We implemented a fake water caustics using precomputed lightmaps. Here is a snapshot of water caustics.

![Caustics](/img/posts/planet-renderer/snapshot7.png)

To make it more interesting, we added trees and grass made with billboards. We also created a sky dome with the sun rises and sets. Here are a set of snapshots of the sun rising.

![Sun Rising](/img/posts/planet-renderer/snapshot9.png)

![Sun Rising](/img/posts/planet-renderer/snapshot10.png)

![Sun Rising](/img/posts/planet-renderer/snapshot11.png)

![Sun Rising](/img/posts/planet-renderer/snapshot12.png)

Our choice of QT and QML makes it extremely easy to edit the UI. Here is our basic UI example:

![UI](/img/posts/planet-renderer/snapshot8.png)

Details in [Github](https://github.com/tycheng/PlanetRenderer)
