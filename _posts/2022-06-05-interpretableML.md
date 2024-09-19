---
layout: post
title: When interpretability brings along new knowledge
subtitle: Can Deep Learning teach us one thing or two about cell ecosystems?
categories: markdown
tags: [Master Thesis, Weakly Supervised Learning, Multiple Instance Learning, MIL, Attention, Deep Sets, PyTorch]
banner:
  image: assets/images/others/ibm_research/good_bad_attention.png
  opacity: 0.5
  background: "#000"
  height: "100vh"
  min_height: "48vh"
---

As part of the master thesis project I completed at IBM Research Zürich, I worked on a type of weakly supervised learning problem where the data is described as bags of instances. 
The labels are only available at the bag level while the individual instance labels remain unknown. 
It is assumed though that the presence of certain instance types causes the bag label.
This setup formalizes well the kind of single-cell data gathered from patients, since it is straightforward to label a set of cells as the tissue or even patient state but much more laborious to label each individual cell with certainty.
Given this data arrangement, we can of course predict the bag label given the instances it is made of, but what I've been more interested in is breaking open the black box and understand how the model came to make this or that prediction. 
One promising approach towards more interpretable models is called the attention mechanism and was first presented as a neat alternative to recurrent neural nerworks (RNN) for natural language processing (NLP). 
The attention mechanism has proven to be more performant than RNN, but the interpretation of the resulting attention weights has led to ongoing debates. 
Hence, I've been evalutating wether the attention weights correlates with the (hidden) instance labels or not.
If the outcome is positive, the attention mechanism would allow to filter cells critical for the observed tissue phenotype and subsequent analysis could reveal new cellular interactions leading to this or that type of tumor. On the other hand, if the outcome is negative then we'll have to develop other methods. In the end, I hope to close the debate about the attention as a source of explainability and offer a framework for reproducible and flexible synthetic data generation compatible with the weakly supervised learning setup described previously.

<br>

**Related papers**

- [Ashish Vaswani, et al. "Attention Is All You Need". CoRR abs/1706.03762. (2017).](https://arxiv.org/abs/1706.03762)
- [Sarthak Jain, et al. "Attention is not Explanation". CoRR abs/1902.10186. (2019).](https://arxiv.org/abs/1902.10186)
- [Sarah Wiegreffe, et al. "Attention is not not Explanation". CoRR abs/1908.04626. (2019).](https://arxiv.org/abs/1908.04626)
- [Jonathan Haab, et al. "Is Attention Explanation? A Quantitative Assessment On Sets". CoRR abs/2207.13018 (2022)](https://arxiv.org/abs/2207.13018)
