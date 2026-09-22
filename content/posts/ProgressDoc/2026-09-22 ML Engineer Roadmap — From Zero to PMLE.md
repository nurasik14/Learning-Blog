---
title: ML Engineer Roadmap — From Zero to PMLE in 6 Months
date: 2026-09-22
draft: false
summary: Comprehensive 6-month roadmap to go from AI application developer to ML Engineer ready for Google PMLE
tags:
  - roadmap
  - ml-engineer
  - pmle
  - google-cloud
  - career
categories:
  - ml-engineering
author: Nurasik12
---

# ML Engineer Roadmap: From Zero to PMLE in 6 Months

> **Current Level:** AI Application Developer (can build apps *using* ML models)
> **Target Level:** ML Engineer (can build ML systems from scratch)
> **Goal:** Pass Google Professional Machine Learning Engineer (PMLE) by March 2027

---

## Self-Assessment: Where You Stand

### ✅ Strengths

| Skill | Evidence | Level |
|-------|----------|-------|
| **Python + async** | FastAPI, asyncio, threading in YJ (Qwen3-VL Lawyer) | Strong |
| **LLM inference & deployment** | Qwen3-VL-8B, Whisper, device_map="auto", CUDA | Strong |
| **Multimodal AI apps** | Image + video + audio + text pipeline in YJ | Strong |
| **Tool orchestration / RAG** | SearXNG search → authoritative fetch → LLM context injection | Good |
| **HuggingFace ecosystem** | transformers, AutoProcessor, pipeline, generate | Good |
| **Model serving** | FastAPI endpoints, session management, CUDA | Good |
| **Agent development** | Joy_JL (telegram bot), OllamaSearch | Good |
| **System design sense** | Multi-service architecture, Docker, MCP server | Medium |
| **Web development** | Full-stack experience (Flutter, JS, TypeScript) | Medium |

### ❌ Gaps (Bottlenecks)

| Gap | Why It Matters for PMLE | Severity |
|-----|------------------------|----------|
| **No model training from scratch** | PMLE tests training loops, loss functions, optimizers | 🔴 Critical |
| **No classical ML (scikit-learn, XGBoost)** | 25% of exam is model development & evaluation | 🔴 Critical |
| **No GCP / Vertex AI experience** | Exam is Google Cloud specific | 🔴 Critical |
| **No MLOps (monitoring, retraining, CI/CD)** | 20% of exam | 🟡 High |
| **No SageMaker / AWS ML** | Alternative cloud ML platform | 🟡 High |
| **No feature engineering at scale** | Data pipelines, BigQuery ML | 🟡 High |
| **No hyperparameter tuning / experiment tracking** | Optuna, MLflow, W&B | 🟡 High |
| **Weak statistics / math implementation** | Custom loss, metrics, regularization | 🟡 High |
| **No distributed training** | Multi-GPU, TPU, data parallelism | 🟠 Medium |

---

## The 6-Month Roadmap

### Month 1: Foundations & Classical ML (Weeks 1-4)

#### Week 1-2: Supervervised Learning Mastery

**Topics:**
- Linear regression, logistic regression (from scratch + scikit-learn)
- Decision trees, random forests, XGBoost
- SVMs, k-NN
- Cross-validation, bias-variance tradeoff

**Resources:**
- [Andrew Ng's ML Course](https://www.coursera.org/learn/machine-learning) (Coursera)
- [StatQuest](https://www.youtube.com/user/joshstarmer) (YouTube — best for intuition)
- [ISLR Book](https://www.statlearning.com/) (free PDF)

**Hands-On:**
- [Kaggle: Titanic](https://www.kaggle.com/c/titanic) — aim top 25%
- [Kaggle: House Prices](https://www.kaggle.com/c/house-prices-advanced-regression-techniques)
- Implement gradient descent from scratch in NumPy

**Deliverable:** 
- GitHub repo `ml-from-scratch` with 5+ algorithms implemented from scratch

#### Week 3-4: Unsupervised Learning + Feature Engineering

**Topics:**
- K-means, DBSCAN, hierarchical clustering
- PCA, t-SNE, UMAP
- Feature selection, encoding, scaling
- Handling missing data, outliers

**Resources:**
- [scikit-learn clustering guide](https://scikit-learn.org/stable/modules/clustering.html)
- [Kaggle Feature Engineering course](https://www.kaggle.com/learn/feature-engineering)

**Hands-On:**
- Customer segmentation project
- Kaggle playground competition

**Deliverable:**
- End-to-end classification pipeline on Adult Income dataset

---

### Month 2: Deep Learning & Neural Networks (Weeks 5-8)

#### Week 5-6: Neural Network Fundamentals

**Topics:**
- Perceptrons, activation functions, backpropagation
- PyTorch fundamentals
- CNNs, pooling, transfer learning
- RNNs, LSTMs, GRUs

**Resources:**
- [fast.ai Practical Deep Learning](https://course.fast.ai/) (free, top-down approach)
- [PyTorch official tutorials](https://pytorch.org/tutorials/)
- [3Blue1Brown Neural Networks](https://www.youtube.com/playlist?list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi)

**Hands-On:**
- Build NN from scratch in NumPy
- MNIST classifier in PyTorch
- CIFAR-100 with ResNet + data augmentation

**Deliverable:**
- GitHub repo `deep-learning-notes` with implementations

#### Week 7-8: Modern Deep Learning

**Topics:**
- Transformers, attention mechanism ("Attention Is All You Need" paper)
- Pre-trained models: BERT, GPT, T5
- LoRA, QLoRA, PEFT for fine-tuning
- Distributed training basics

**Resources:**
- [Jay Alammar's Illustrated Transformer](https://jalammar.github.io/illustrated-transformer/)
- [HuggingFace docs](https://huggingface.co/docs)
- [HuggingFace PEFT](https://huggingface.co/docs/peft/index)

**Hands-On:**
- Fine-tune BERT for sentiment analysis
- Fine-tune LLaMA/Qwen with LoRA on custom dataset
- Deploy with vLLM or TGI

**Deliverable:**
- Fine-tuned model on HuggingFace Hub with model card

---

### Month 3: MLOps & Production ML (Weeks 9-12)

#### Week 9-10: Experiment Tracking & Model Management

**Topics:**
- MLflow: tracking, registry, serving
- DVC: data versioning
- Weights & Biases
- Model cards, documentation

**Resources:**
- [MLflow docs](https://mlflow.org/docs/latest/index.html)
- [DVC docs](https://dvc.org/doc)
- [W&B free tier](https://wandb.ai/)

**Hands-On:**
- Set up MLflow server, log experiments
- Version a dataset with DVC
- Create model card for your fine-tuned model

**Deliverable:**
- GitHub repo with full MLOps pipeline

#### Week 11-12: Deployment & Serving

**Topics:**
- Model serving: Flask, FastAPI, BentoML
- Containerization: Docker for ML
- Kubernetes basics
- A/B testing, canary deployments
- Model monitoring: drift, latency, throughput

**Resources:**
- [BentoML docs](https://docs.bentoml.com/)
- [Docker for ML](https://docs.docker.com/get-started/)
- [Evidently AI](https://www.evidentlyai.com/) (monitoring)

**Hands-On:**
- Deploy fine-tuned LLM with BentoML + Docker
- Set up monitoring dashboard with Evidently
- Create CI/CD pipeline with GitHub Actions

**Deliverable:**
- Production-grade deployed model with monitoring

---

### Month 4: Google Cloud & Vertex AI (Weeks 13-16)

#### Week 13-14: GCP Fundamentals

**Topics:**
- GCP core services: Compute, Storage, IAM
- BigQuery: SQL for ML
- Cloud Storage, Dataflow, Pub/Sub
- IAM, service accounts, VPC

**Resources:**
- [Google Cloud Skills Boost](https://www.cloudskillsboost.google/) (free)
- [BigQuery public datasets](https://cloud.google.com/bigquery/public-data)

**Hands-On:**
- Set up GCP project (free tier with $300 credit)
- Run ML queries on BigQuery public data
- Build simple data pipeline

**Deliverable:**
- End-to-end data pipeline on GCP

#### Week 15-16: Vertex AI Deep Dive

**Topics:**
- Vertex AI Workbench (managed Jupyter)
- Vertex AI Training (custom + AutoML)
- Vertex AI Pipelines (Kubeflow)
- Vertex AI Feature Store
- Vertex AI Model Registry + Endpoints
- Vertex AI Model Monitoring
- Vertex AI Experiments

**Resources:**
- [Vertex AI docs](https://cloud.google.com/vertex-ai/docs)
- [Google Cloud Skills Boost](https://www.cloudskillsboost.google/paths/17) (ML Engineer learning path)

**Hands-On:**
- Train a model with custom container on Vertex AI
- Build Vertex AI Pipeline
- Deploy and serve a model
- Set up drift detection

**Deliverable:**
- Full Vertex AI project: data → training → pipeline → deployment → monitoring

---

### Month 5: ML System Design (Weeks 17-20)

#### Week 17-18: Design Patterns

| Pattern | Use Case | Key Components |
|---------|----------|----------------|
| Batch inference | Offline predictions | Dataflow, BigQuery, Vertex Batch Prediction |
| Real-time inference | Low-latency serving | Vertex Endpoints, GPU acceleration |
| Feature store | Training-serving skew | Vertex Feature Store, Feast |
| Multi-model serving | A/B testing | Model routing, traffic splitting |
| Cost optimization | Budget management | Spot VMs, committed use discounts |

**Case Studies to Study:**
- Netflix recommendation (multi-armed bandit, ranking)
- Uber Michelangelo (feature store, model serving)
- Google Spanner (global consistency for training data)
- Twitter timeline (real-time features, caching)

**Practice:**
- Design 5 ML systems on paper
- Get feedback on r/MachineLearning or Discord

#### Week 19-20: Practice Exams & Weak Spot Remediation

**Resources:**
- [Official Google practice exam](https://docs.google.com/forms/d/e/1FAIpQLSErpTEGybwSzbL7LjEOL4M4JKiOzKMqF1YwWb9QaBqC4l4l4A/viewform) ($50)
- [Tutorials Dojo PMLE](https://tutorialsdojo.com/courses/google-professional-machine-learning-engineer-pmle-practice-exams/) (~$30)
- [Whizlabs PMLE](https://www.whizlabs.com/google-cloud-certified-professional-machine-learning-engineer/) (~$30)

**Target:**
- 80%+ on practice exams consistently
- Review all incorrect questions

---

### Month 6: Final Prep & Exam (Weeks 21-24)

#### Week 21-22: Exam Blueprint Deep Dive

| Domain | Weight | Key Topics |
|--------|--------|------------|
| Architecting low-code ML solutions | 22% | AutoML, Vertex AI, pre-built components |
| Designing data pipelines | 18% | Dataflow, BigQuery, feature engineering |
| Designing model architecture | 18% | Model selection, ensembling, transfer learning |
| Training and serving ML models | 22% | Vertex Training, hyperparameter tuning, endpoints |
| Monitoring and optimizing ML solutions | 20% | Model monitoring, drift, cost optimization |

#### Week 23: Final Review

- Re-take practice exams
- Review weak domains
- Read official exam guide
- Check Google's sample questions

#### Week 24: Take the Exam

- Book through [WebAssessor](https://www.webassessor.com/wa.do?page=publicHome&branding=KRYTERION)
- Cost: ~$200 USD
- Online proctored or test center

---

## Weekly Schedule Template

| Day | Time | Activity |
|-----|------|----------|
| Monday | 2 hrs | Theory / video lectures |
| Tuesday | 2 hrs | Hands-on coding |
| Wednesday | 2 hrs | Hands-on coding |
| Thursday | 2 hrs | Theory / reading |
| Friday | 2 hrs | Project work |
| Saturday | 4-6 hrs | Project work / Kaggle |
| Sunday | 2 hrs | Review, notes, weak spots |

**Total: ~16-18 hours/week**

---

## Key Projects to Build (Portfolio)

| # | Project | Phase | Skills Demonstrated |
|---|---------|-------|---------------------|
| 1 | End-to-end ML pipeline (scikit-learn) | Month 1 | Data → model → evaluation |
| 2 | Fine-tuned LLM with LoRA + deployed | Month 2 | Deep learning, deployment |
| 3 | MLOps pipeline (MLflow + DVC + BentoML + Docker) | Month 3 | Production ML |
| 4 | Vertex AI end-to-end project | Month 4 | GCP, Vertex AI |
| 5 | ML system design docs (5 designs) | Month 5 | System design |

---

## Milestones & Checkpoints

| Week | Milestone | How to Verify |
|------|-----------|---------------|
| 4 | Complete 2 Kaggle competitions | Top 50% in at least one |
| 8 | Fine-tune and deploy an LLM | Working endpoint with monitoring |
| 12 | Full MLOps pipeline running | Automated training → deployment |
| 16 | Vertex AI project complete | End-to-end on GCP |
| 20 | 5 system design docs written | Reviewed by someone |
| 24 | 80%+ on practice exams | Ready to book real exam |

---

## Free Resources Summary

| Resource | Cost | Link |
|----------|------|------|
| Andrew Ng ML Course | Free (audit) | [Coursera](https://www.coursera.org/learn/machine-learning) |
| Google Cloud Skills Boost | Free | [Skills Boost](https://www.cloudskillsboost.google/) |
| fast.ai | Free | [fast.ai](https://course.fast.ai/) |
| 3Blue1Brown | Free | [YouTube](https://www.youtube.com/c/3blue1brown) |
| ISLR Book | Free | [statlearning.com](https://www.statlearning.com/) |
| Kaggle | Free | [kaggle.com](https://www.kaggle.com/) |
| GCP Free Tier | Free ($300 credit) | [cloud.google.com/free](https://cloud.google.com/free) |

---

## Paid Resources (Worth It)

| Resource | Cost | Why |
|----------|------|-----|
| Tutorials Dojo PMLE | ~$30 | Best practice exams |
| Google official practice exam | $50 | Most accurate |
| AWS Skill Builder | ~$29/mo | For MLA-C01 backup cert |

---

## CityUHK Sponsorship Strategy

Since you have **HK$6,000** (~USD $770) to spend:

| Certification | Cost (USD) | Cost (HK$) | When to Take |
|---------------|------------|------------|--------------|
| **AWS AI Practitioner (AIF-C01)** | $100 | ~HK$780 | Month 1 (easy win) |
| **AWS ML Engineer Associate (MLA-C01)** | $150 | ~HK$1,170 | Month 3 |
| **Google PMLE** | $200 | ~HK$1,560 | Month 6 |
| **Microsoft AI-103** | $165 | ~HK$1,290 | Month 4 (optional) |
| **Total** | **$615** | **~HK$4,800** | Under budget! |

Apply by **14 December 2026** (1st round) for best chance.

---

## Summary

**You're not starting from zero — you're starting from "AI app developer."**

You already know how to:
- Build production AI apps
- Deploy models with FastAPI + Docker
- Use HuggingFace ecosystem
- Orchestrate tools and agents

**You need to learn:**
- Training models from scratch
- Classical ML algorithms
- GCP Vertex AI
- MLOps at scale
- ML system design

**Timeline:** 6 months of focused study (15-20 hrs/week)

**Goal:** Pass Google PMLE + become a strong ML engineer

---

*This post will be updated monthly with progress. Follow along on [GitHub](https://github.com/nurasik14)!*

*Stay tuned for Month 1 updates — Classical ML Mastery begins now! 🚀*
