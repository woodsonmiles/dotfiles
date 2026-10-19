---
name: job-description
description: Evaluate and rewrite job descriptions for clarity, candidate appeal, and focus on mission impact. Use when reviewing, editing, or drafting technical job postings — especially for cleared roles in aerospace, space defense, or national security.
---

# Job Description Evaluator

Evaluate and edit job descriptions using four criteria. Focus on concrete edits, not abstract scores.

## When to Use

- Reviewing an existing job description for weaknesses
- Rewriting or restructuring a technical job posting
- Drafting a new description from scratch for cleared or defense-adjacent roles
- Advising a hiring manager on how to improve a posting

## Evaluation Criteria

### 1. Front-Loaded Critical Details

The first three lines of a job description determine whether a qualified candidate keeps reading or scrolls past. Most job boards truncate preview text after 100–150 characters, so the header must survive truncation.

**What to check:**

- Is the exact job title on line 1? Not a generic label like "Software Engineer" — include the specificity: "Senior DevOps Engineer – TS/SCI"
- Is the clearance level stated in the title or immediately below it? "TS/SCI" or "TS/SCI eligible" — not buried in requirements
- Is the physical work location and SCIF environment specified? "Colorado Springs, CO – SCIF-based" or "On-site at Peterson SFB"
- Is a salary range present? Exclude only if legally prohibited from disclosing — ranges attract candidates and filter mismatched expectations

**How to fix:**

- Rewrite the header as a structured block at the very top:

```
Job Title: Senior DevOps Engineer
Clearance: TS/SCI
Location: Colorado Springs, CO – SCIF environment
Salary: $145,000 – $175,000
```

- If the original posting buries the clearance in a "Requirements" section 500 words down, pull it up to the header
- If salary is missing and there is no legal barrier, add a competitive range. Research market rates for the role and region before picking numbers
- Remove any title that reads like a marketing slogan ("DevOps Ninja Wanted!") and replace with a clear, searchable title

---

### 2. Mission and Impact Focus

Candidates in aerospace, space defense, and national security are mission-driven. They want to know what they are defending, enabling, or building — not which tickets they will close. A posting that reads like a task list attracts task-doers. A posting that describes impact attracts builders.

**What to check:**

- Does the description define what success looks like in the first 6–12 months? Concrete outcomes, not "perform duties as assigned"
- Does it connect the role to a specific mission? Space domain awareness, missile warning, satellite communications, cyber defense for critical infrastructure — pick what applies
- Does it explain why this work matters? Not generic "support national security" — tie it to the specific program or capability
- Is the tone forward-looking? "You will build" beats "You will maintain"

**How to fix:**

- Replace the opening paragraph (often a generic company boilerplate) with a mission statement:

```
You will own the CI/CD pipelines that deliver software updates to
space surveillance sensors operating 24/7. When a pipeline fails at
2 AM, you are the reason a sensor operator gets a fix before the
next pass.
```

- Convert task lists into impact statements. Instead of:

```
- Maintain Kubernetes clusters
- Write Terraform modules
- Monitor system health
```

Write:

```
In your first 6 months, you will migrate three legacy deployment
pipelines to a GitOps model, reducing mean time to production from
14 days to under 48 hours. You will design the infrastructure-as-code
foundation that the next five teams build on.
```

- Mention the specific customer, program, or domain where possible — candidates self-select into missions they care about
- Remove filler phrases: "fast-paced environment," "dynamic team," "wearing many hats." These say nothing.

---

### 3. Tech Stack Categorization

A wall of technologies is unreadable. Candidates scan for specific tools they know. Grouping technologies by category lets them find what they are looking for in seconds and signals that the organization has a coherent architecture, not a pile of tools.

**What to check:**

- Are technologies listed under clear category headings?
- Are the headings specific? "Cloud" is better than "Infrastructure"; "Containerization" is better than "DevOps Tools"
- Are tools grouped logically — not alphabetically, not by recency of adoption
- Is each category limited to 3–6 items? More than that suggests a sprawl problem

**How to fix:**

- Create explicit section headings and move tools into them:

```
Cloud & Infrastructure
- AWS GovCloud (primary)
- Linux (RHEL, Amazon Linux 2)

Containerization & Orchestration
- Kubernetes (EKS)
- Docker
- Helm

Infrastructure as Code
- Terraform
- Ansible

CI/CD & GitOps
- GitLab CI
- ArgoCD

Observability
- Prometheus
- Grafana
- ELK Stack
```

- If the posting lists "AWS, Azure, GCP" — clarify which is primary and which are secondary or not used. Candidates want to know what they will actually touch on day one
- Remove outdated or tangential tools. If the role uses Terraform 95% of the time and Ansible 5%, say so — do not list them as co-equal
- If a tool is internal or proprietary, note that. "Our internal deployment platform (built on ArgoCD)" is better than just "ArgoCD" if the candidate will not recognize the tool from the name alone

---

### 4. Requirements vs. Wishlists

Long requirement lists are the single biggest cause of qualified candidate drop-off. Research consistently shows that candidates who meet 60% of listed requirements will apply if the requirements are honest — but they will not apply if the list looks like it demands 100%. Labeling matters: a "requirement" that is actually a preference signals either a bad hiring manager or an impossible role.

**What to check:**

- Is the "must-have" list short? 4–6 items maximum
- Does it include only things that are genuinely non-negotiable? Clearance level, core architecture experience, specific language or platform
- Are specific tools, certifications, and "nice-to-haves" explicitly separated?
- Is Security+ (or equivalent) labeled as a nice-to-have unless the contract mandates it at time of hire?

**How to fix:**

- Split into two labeled sections:

```
Required
- Active TS/SCI clearance
- 5+ years building and operating infrastructure on AWS GovCloud
- Production Kubernetes experience (EKS preferred)
- Proficiency with Terraform for infrastructure as code
- On-site in Colorado Springs, CO

Nice-to-Have
- AWS Solutions Architect or equivalent certification
- Security+ (must obtain within 90 days of start)
- Experience with GitOps workflows (ArgoCD, Flux)
- Familiarity with classified network environments
- DoD or IC customer experience
```

- Move anything that could be learned on the job from Required to Nice-to-Have. "Familiarity with classified networks" is different from "must hold TS/SCI"
- If a certification is contract-required at time of hire, say that explicitly — "Security+ required at time of hire" vs. "Security+ preferred"
- Remove redundant items. "Linux experience" and "RHEL experience" and "Amazon Linux experience" are three ways of saying the same thing — pick one
- If you list a programming language in Required, specify what it is for. "Python (for automation tooling)" is better than just "Python"

---

## Editing Workflow

When asked to edit a job description, follow this order:

1. **Read the full document once** without making changes. Identify which criteria are weakest.
2. **Rewrite the header** — title, clearance, location, salary. This is the highest-impact edit.
3. **Replace the opening paragraph** with a mission/impact statement.
4. **Restructure the responsibilities section** into impact-first statements with a 6–12 month frame.
5. **Reorganize the tech stack** under category headings.
6. **Split requirements** into Required and Nice-to-Have, trimming the Required list to 4–6 items.
7. **Remove filler** — "fast-paced," "dynamic," "wearing many hats," "self-starter," "go-getter." Every instance is wasted space.
8. **Final pass for tone** — the posting should read like a conversation with a specific person, not a compliance document.

When evaluating (not editing), output a structured review addressing each criterion with specific line references and concrete suggestions.
