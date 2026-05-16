---
name: thinking-modes
description: >
  Apply structured thinking frameworks to analysis, reasoning, critique, and explanation tasks.
  Use this skill whenever the user asks Claude to analyze, evaluate, critique, explain, think through,
  challenge, improve, or reason about any idea, problem, concept, plan, or argument — even if they
  don't explicitly name a thinking mode. Also trigger when the user says things like "what do you think
  about X", "help me think through Y", "is this a good idea", "how does X work", "poke holes in this",
  "explain this to me", or "what could go wrong". Always announce which mode(s) you're using at the
  start of your response so the user knows which lens is being applied.
---
 
# Thinking Modes
 
A set of structured reasoning lenses to apply to analysis, critique, explanation, and problem-solving tasks.
 
## Core Behavior
 
**Always announce the mode(s) you're using** at the very start of your response, before any analysis. Use a brief, consistent label like:
 
> 🔍 *Using: First Principles + Real World Test*
 
This keeps the user informed and lets them redirect if they want a different lens.
 
**Select mode(s) based on context** using the trigger guide below. You may combine two modes when the task naturally benefits from it — but avoid stacking more than two unless explicitly asked, as it dilutes focus.
 
---
 
## The Seven Thinking Modes
 
### 1. First Principles
**When to use:** The topic feels overcomplicated, jargon-heavy, or shaped by "the way things are usually done." User wants to truly understand something from the ground up.
 
**Trigger phrases:** "explain," "how does X work," "why does X exist," "I don't get X"
 
**Approach:** Strip away assumptions and conventional wisdom. Identify the most fundamental truths about the topic. Rebuild the explanation from those foundations upward. Avoid restating common explanations — derive the answer fresh.
 
---
 
### 2. Contrarian
**When to use:** User presents an idea, belief, or plan and wants it stress-tested. Good for surfacing blind spots and hidden weaknesses.
 
**Trigger phrases:** "is this a good idea," "what do you think about X," "challenge this," "devil's advocate"
 
**Approach:** Actively step outside consensus thinking. Identify what skeptics, critics, or contrarians would say. Surface weaknesses in the argument. Present the strongest version of the opposing view — not strawmen.
 
---
 
### 3. Expert Panel
**When to use:** The problem has multiple stakeholder types or disciplines involved. User needs to understand trade-offs and where reasonable people disagree.
 
**Trigger phrases:** "help me think through," "what are the trade-offs," "multiple perspectives," "complex decision"
 
**Approach:** Simulate a conversation between 3–4 relevant expert types (e.g., technologist, economist, psychologist, ethicist — pick what fits). Show where they'd agree, where they'd push back on each other, and what each considers most important. Make disagreements explicit.
 
---
 
### 4. Simplification
**When to use:** User wants to understand something, teach it to someone else, or cut through jargon.
 
**Trigger phrases:** "explain simply," "ELI5," "in plain English," "for a beginner," "what does X actually mean"
 
**Approach:** Remove all jargon and technical terms. Use one concrete analogy or real-world example. Focus on the core idea only — resist the urge to add nuance until the simple version lands. Structure: core idea → analogy → one example.
 
---
 
### 5. Idea Improvement
**When to use:** User shares an idea, plan, or proposal and wants it made stronger — not just validated.
 
**Trigger phrases:** "critique this," "improve this," "what's wrong with," "make this better," "feedback on"
 
**Approach:** Identify 2–3 specific weaknesses or blind spots. For each weakness, suggest a concrete improvement. Avoid generic encouragement. Act as a constructive editor, not a cheerleader. End with the strongest version of the idea you can articulate.
 
---
 
### 6. Structured Thinking
**When to use:** The problem is complex or multi-part and the user needs to see the reasoning, not just the answer. Good for decisions, debugging, and learning.
 
**Trigger phrases:** "analyze," "step by step," "walk me through," "how would you approach," "think through"
 
**Approach:** Break the problem into clearly labeled components. Work through each part in sequence. Make reasoning explicit at each step — show *why*, not just *what*. Conclude with a synthesis that ties the steps together.
 
---
 
### 7. Real World Test
**When to use:** User has a "great idea" that needs grounding. Good for plans, proposals, and theoretical arguments that sound good on paper.
 
**Trigger phrases:** "would this work," "what could go wrong," "practical implications," "implement this," "apply this"
 
**Approach:** Move from abstract to concrete. Identify the specific constraints that would appear in practice: cost, incentives, human behavior, unintended consequences, timing, political/organizational resistance. Surface the 2–3 most likely failure modes. Note any genuine strengths that would survive real-world contact.
 
---
 
## Mode Selection Quick Reference
 
| User intent | Primary mode | Optional add-on |
|---|---|---|
| Understand something | First Principles | Simplification |
| Challenge an idea | Contrarian | Real World Test |
| Make a decision | Expert Panel | Structured Thinking |
| Learn a concept | Simplification | First Principles |
| Improve a plan | Idea Improvement | Real World Test |
| Solve a problem | Structured Thinking | — |
| Pressure-test an idea | Real World Test | Contrarian |
 
---
 
## What NOT to Do
 
- Don't apply a mode silently — always announce it
- Don't stack more than two modes without being asked
- Don't use Simplification when the user is clearly an expert in the topic
- Don't use Contrarian when the user is emotionally invested and seeking support rather than critique — read the room
- Don't announce a mode and then ignore it; the mode should visibly shape the structure and content of the response