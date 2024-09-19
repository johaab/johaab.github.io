---
layout: post
title: Deep Knockoffs for fMRI time courses nonparametric testing
subtitle: Can we improve fMRI analysis with the help of Deep Learning?
categories: markdown
tags: [Research project, fMRI, Timecourse, Neural Networks, Python]
banner:
  image: assets/images/others/mip_lab/mip_lab_banner.png
  opacity: 0.5
  background: "#000"
  height: "100vh"
  min_height: "42vh"
---

I had the chance to do a small research project with the Medical Image Processing Lab ([MIP:lab](https://miplab.epfl.ch/)) of EPFL as part of my Master in Computational Biology and Bioinformatics. Under the supervision of [Dr. Maria Giulia Preti](https://miplab.epfl.ch/index.php/people/preti) and [Prof. Dimitri van de Ville](https://miplab.epfl.ch/index.php/people/vandeville), I worked for the first time with blood-oxygen-level dependent (BOLD) contrast fMRI timecourses provided by the Center for Biomedical Imaging (CIBM) in Lausanne. The data was collected from 100 patients across 379 brain regions and during different tasks. Now, we typically want to know which regions were activated during a certain task for most patients. To do so, we first use generalized linear model (GLM) to assign an activation score to each region. In a second time, we compare this score to what we think a non activated region would look like. If the difference between the two is large enough, then the region was (de)activated during the task. That's what we call statistical testing. The interesting part is how to define what we'll test a specific region against. A naive approach would be to simply take a Gaussian as the distribution describing the activation of a non stimulated brain region. But this doesn't take into account spatial nor temporal dependencies. The aim of this project was to apply the [Knockoff framework](https://web.stanford.edu/group/candes/deep-knockoffs/) described by Emmanuel Candès and his group to generate fake fMRI timecourses. Those surrogates fMRI timecourses would mimic what could be expected from a non stimulated brain and give us a way to built a novel nonparametric testing approach for fMRI timecourses analysis.

You can find more information and some illustrations in my <a href="https://johaab.github.io/assets/pdf/mip_lab_report.pdf" target="_blank">report</a>.
<br>

**Related videos**

<br>

![Emmanuel Candès: "The Knockoffs Framework: New Statistical Tools for Replicable Selections"](https://www.youtube.com/watch?v=NuVBHXYBC4k)

<br>

**Related papers**

- [Yaniv Romano, et al. "Deep Knockoffs". Journal of the American Statistical Association 115. 532(2019): 1861–1872.](https://arxiv.org/abs/1811.06687)