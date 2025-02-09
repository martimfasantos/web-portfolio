---
title: "📜 My MSc Thesis: Aligning Language Models with Human Feedback without Reinforcement Learning"
date: 2024-11-05
draft: false
github_link: "https://github.com/martimfasantos/MSc-Thesis"
author: "martim"
tags:
  - MSc Thesis
  - Language Models
  - Human Feedback
  - AI Research
image: /blog/blog-msc-thesis.jpg # image ratio: 4x3
description: "Summary and insights from my MSc Thesis on aligning language models with human feedback without reinforcement learning."
toc: true
mathjax: false
---

Recently, I successfully defended my MSc Degree in Computer Science and Engineering Thesis on *Aligning Language Models with Human Feedback without Reinforcement Learning*. This research was supervised by [**André F.T. Martins**](https://andre-martins.github.io/), Head of Research at Unbabel, and [**Sweta Agrawal**](https://sweta20.github.io/), postdoctoral researcher at Instituto de Telecomunicações, in collaboration [Unbabel](https://unbabel.com/) and [SARDINE Lab](https://sardine-lab.github.io/).

### Thesis Overview

Large language models (LLMs) are capable of generating human-like text and learning vast world knowledge. However, these models sometimes produce misleading or toxic content, highlighting the need to align them with human values for safer and more effective AI systems. Traditionally, the widely used **Reinforcement Learning from Human Feedback (RLHF)** method has been a go-to strategy for improving this alignment, as seen in models like **GPT-3.5** and **GPT-4**. However, RLHF is complex, unstable, and highly sensitive to hyperparameters, making it difficult to apply universally.

To address these issues, several **reinforcement learning-free (RL-free)** approaches like **DPO**, **CPO**, **SimPO**, and **SLiC** have been proposed. My thesis investigates whether the promising results of these RL-free methods seen in larger models can be replicated in **small language models (SLMs)**. Specifically, I focus on **machine translation** and **summarization** tasks and assess how well these methods help the models learn human preferences, avoid common biases, and generate high-quality outputs.

### Methodology and Models Used

In my study, I trained three compact language models — **TinyLlama 1.1B**, **Gemma-2 2B**, and **EuroLLM 1.7B** — using several RL-free methods. I compared their performance against baseline models to determine the effectiveness of these approaches for smaller-scale LLMs.

This **work is the first to comprehensively compare various feedback methods applied to state-of-the-art small language models**, contributing to the development of more accessible and secure AI systems that can run effectively in resource-constrained environments.

### Conclusion

By evaluating these models and feedback methods, my research sheds light on how RL-free techniques can be a viable alternative to RLHF for improving model alignment with human values, even in smaller-scale models. This is a step toward building more reliable AI systems that can better serve the needs of users in real-world applications.

---

### Repositories

- [**MSc Thesis Repository**](https://github.com/martimfasantos/MSc-Thesis)
- [**CustomPOs-for-SLMs**](https://github.com/martimfasantos/CustomPOs-for-SLMs) - Custom Policy Optimization methods for Small Language Models.

---