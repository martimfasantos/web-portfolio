---
title: "🤖 Understanding AI Agents, tools, and protocols"
date: 2025-10-02
draft: false
github_link: "https://github.com/martimfasantos/ai-agents-frameworks"
author: "martim"
tags:
  - AI Agents
  - Agentic AI
  - Frameworks
  - Tools
  - A2A
  - MCP
image: /blog/blog-ai-agents.png # image ratio: 4x3
description: "An overview of Agentic AI – what AI agents are, how they work, and the role of protocols like A2A and MCP in enabling multi-agent collaboration."
toc: true
mathjax: false
---

Recently, I've been diving deep into the world of **AI agents** – intelligent systems that can work autonomously to help us accomplish tasks. This isn't just another tech trend; it's a fundamental shift in how we interact with AI. Instead of simply asking questions and getting answers, we're now entering an era where AI can take action, make decisions, and work alongside us as digital teammates.

This post is a mix of **research insights** and **my personal reflections** on what Agentic AI really means today — how agents work, the frameworks behind them, and the protocols that let them talk to each other.  

---

## What Makes an AI Agent?

At its core, **Agentic AI** describes AI systems that can operate autonomously, using reasoning and external tools to achieve goals. While a traditional LLM simply answers prompts, an agent can **plan multi-step workflows**, **maintain memory**, and **execute tasks independently**.

Different players describe agents in their own way:

- **[Google](https://cloud.google.com/discover/what-are-ai-agents):** “software systems that use AI to pursue goals and complete tasks on behalf of users.”
- **[NVIDIA](https://www.nvidia.com/en-us/glossary/ai-agents/):** autonomous systems that orchestrate tools and manage workflows.
- **[OpenAI](https://platform.openai.com/docs/guides/agents):** “systems that intelligently accomplish tasks, from simple workflows to complex objectives.”

Across these definitions, a few key capabilities stand out:

- **Goal-driven autonomy** – minimal human guidance once a task is set.
- **Reasoning & planning** – breaking down goals into steps.
- **Action execution** – using APIs, databases, and tools.
- **Memory** – retaining context for consistency and learning.
- **Collaboration** – working with other agents (or humans).

**Example:** Imagine a sales analysis agent. It doesn’t just answer “how were sales last quarter?” — it fetches data, runs scripts, builds charts, and delivers a report, end-to-end.

---

## Frameworks That Power Agents

The AI agents ecosystem is growing fast, with frameworks that allow developers to build and experiment with AI agents:

- **OpenAI Agents SDK:** Provides Python-based tools for creating agents that can perform multi-step tasks and interact with APIs [OpenAI Agents Python SDK](https://openai.github.io/openai-agents-python/agents/).  
- **LlamaIndex Agents:** Focused on document retrieval and reasoning, these agents can interact with structured or unstructured data sources [LlamaIndex](https://docs.llamaindex.ai/en/stable/use_cases/agents/).  
- **Google Agent Development Kit (ADK):** Provides components to develop agents compatible with A2A protocols for Agent-to-Agent communication [Google ADK](https://google.github.io/adk-docs/#what-is-agent-development-kit).  
- **LangChain Agents:** A popular framework for building agents that can use language models to interact with various tools and APIs [LangChain](https://docs.langchain.com/oss/python/langchain/agents).
- **Others worth exploring:** AG2, Agno, Autogen, CrewAI, LangGraph, Pydantic-AI, smolagents 

**🧑🏻‍💻 If you’re curious, I’ve put together a repo where you can try out different frameworks in practice: [AI Agent Frameworks Repo](https://github.com/martimfasantos/ai-agents-frameworks). It’s not meant to be production-ready, just a learning playground.**

These frameworks are powerful, but agents don’t exist in isolation. To truly scale and collaborate, **we need shared standards and protocols** that let agents talk to each other and to the tools they rely on. That’s where MCP and A2A come in.

---

# Protocols: The Glue for Multi-Agent Collaboration

Frameworks are great, but without common standards, agents risk becoming isolated silos. This is where protocols step in. Two of the most promising are **MCP** and **A2A**.

### Model Context Protocol (MCP)

Developed by Anthropic, [MCP](https://modelcontextprotocol.io/docs/getting-started/intro) acts like a **USB-C port for AI** — a simple, universal way for models to connect to the world around them. Instead of building custom integrations from scratch, MCP provides a standard interface that lets systems like Claude or ChatGPT tap into data sources (from local files to databases), tools (like search engines or calculators), and even workflows (such as specialized prompts or pipelines) — enabling them to access key information and perform tasks.
- Supports streaming and long-running tasks.  
- Ensures interoperability across platforms.

Think of MCP as the layer that lets us perform certain tasks without reinventing the wheel every time.

### Agent-to-Agent Protocol (A2A)

Proposed by Google, [A2A](https://developers.googleblog.com/en/a2a-a-new-era-of-agent-interoperability/) focuses on **direct agent collaboration**. A2A enables agents to collaborate in their natural, unstructured modalities, even when they don’t share memory, tools and context. It enables true multi-agent scenarios without limiting an agent to a “tool.”

From a technical standpoint, A2A is:
- Built on HTTP, SSE, and JSON-RPC — easy to integrate into existing stacks. 
- Secure by default with enterprise-grade auth.
- Supports long-running and multimodal tasks (text, audio, video).

Whereas **MCP connects agents to services and tools**, A2A connects **agents to each other** — which makes them a great pair for building more flexible and connected AI systems.

---

## Insights from Research

I’ve been following this topic closely for a while and even shared some of my favorite findings on LinkedIn. Two stand out because they capture both the future architecture of agents and the practical tricks that make them work better today.


Here’s a smoother, more blog-ready version of that section. It keeps the **research depth**, integrates your **LinkedIn posts** as highlights, and **invites readers to explore them fully** without overwhelming the flow:

---

## Insights from Research

I’ve been following this topic closely for a while and even shared some of my favorite findings on LinkedIn. Two stand out because they capture both the **future architecture of agents** and the **practical tricks that make them work better today**.

### 1. Small Language Models are the Future of Agentic AI 🚀

In a recent NVIDIA paper — *[Small Language Models are the Future of Agentic AI](https://arxiv.org/pdf/2506.02153)* — the bold claim is that most agentic tasks don’t need a massive LLM. Instead, **Small Language Models (SLMs)** are often **faster, cheaper, and more predictable**.

The authors argue that the most effective design is **heterogeneous**:

* A large model handles **planning and orchestration**,
* A swarm of SLMs executes **narrow, repetitive subtasks** reliably.

![slms_post](/blog/slms_post.jpeg )

This resonates strongly with my MSc research, where I showed that a **1.7B parameter model**, properly fine-tuned, could match the performance of much larger 7B–13B models on machine translation — at a fraction of the cost. This is a finding that continues to influence how I think about building scalable and solid AI systems.

👉 Full post here: [LinkedIn post on SLMs](https://www.linkedin.com/posts/martimfasantos_agenticai-llm-slm-activity-7345405789177532417-fkNF?utm_source=share&utm_medium=member_desktop&rcm=ACoAADfauDMBfW3k8gXaZNa1WqdB0v0NbKEqu9g)

---

### 2. Better Agents Need Better Prompts ✍️

The second piece comes from OpenAI’s official *[GPT-4.1 Prompting Guide](https://cookbook.openai.com/examples/gpt4-1_prompting_guide)*. After experimenting with agent pipelines, one thing became clear: **prompt quality directly impacts agent performance**.

A few practical takeaways from the guide:

* Encourage **step-by-step reasoning** (chain-of-thought) and clear **instructions**.
* Prioritize **clarity over quantity**.
* Use **persistent reminders** for agent behavior (e.g., “plan before acting”).
* Anchor key instructions at both the **start and end** of prompts if needed.

![prompting_post](/blog/prompting_post.png)

Even with advanced models like GPT-4.1, these simple strategies can be the difference between a flaky agent and one that works reliably in production.

👉 Full post here: [LinkedIn post on prompting](https://www.linkedin.com/posts/martimfasantos_gpt-41-prompting-guide-openai-cookbook-activity-7328011161910534144-2KHm?utm_source=share&utm_medium=member_desktop&rcm=ACoAADfauDMBfW3k8gXaZNa1WqdB0v0NbKEqu9g)


---

## Personal Reflections

I believe that agentic AI represents a significant evolution in how we build and interact with AI systems. By enabling autonomy, planning, and collaboration, agents can tackle complex, corporate tasks better than a simple ChatGPT or Gemini. 

The big power of these tools is their capacity to automate workflows and **collaborate** with humans to achieve goals faster and more effectively. Yes, you heard me right: **COLLABORATE**. I believe that the future will involve humans and AI agents working side-by-side, each complementing the other's strengths. We'll see agents handling routine, structured tasks, while humans focus on creativity, validation, and strategic decision-making.

To understand and leverage agentic AI effectively, companies should understand which processes can benefit from automation, identify suitable systems and tools, and invest in building modular, interoperable architectures that can evolve over time and interact with humans

---

## Some References and suggested reading

- [Google Cloud – What are AI Agents](https://cloud.google.com/discover/what-are-ai-agents)  
- [IBM – AI Agents](https://www.ibm.com/think/topics/ai-agents)  
- [NVIDIA – AI Agents Glossary](https://www.nvidia.com/en-us/glossary/ai-agents/)  
- [OpenAI – Agents Guide](https://platform.openai.com/docs/guides/agents)  
- [OpenAI Cookbook – Agentic Workflows](https://cookbook.openai.com/examples/gpt4-1_prompting_guide#1-agentic-workflows)  
- [LlamaIndex – Agents Use Cases](https://docs.llamaindex.ai/en/stable/use_cases/agents/)  
- [OpenAI Agents Python SDK](https://openai.github.io/openai-agents-python/agents/)  
- [Google ADK – Agent Development Kit](https://google.github.io/adk-docs/#what-is-agent-development-kit)  
- [AI Agents vs. Agentic AI: A Conceptual Taxonomy, Applications and Challenges](https://arxiv.org/html/2505.10468v1)  
- [ReAct: Synergizing Reasoning and Acting in Language Models](https://arxiv.org/abs/2210.03629)  
- [Small Language Models are the Future of Agentic AI](https://arxiv.org/abs/2506.02153)  

---