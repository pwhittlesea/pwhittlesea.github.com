---
title: Curriculum Vitae
permalink: /cv/

jobs:
  - role: Lead Architect
    time: 2024 - Present
    company: Cirium
    details: |
      As Cirium's Lead Architect I set the technical strategy for the business; designing organisation wide solutions that support Cirium's future growth.

      Areas focused on:
      - Interfacing with C-Level leadership to ensure that technical strategy aligns with the goals of the business
      - Working with teams to ensure shared infrastructure/solutions meet their needs
      - Effective communication of strategy with stakeholders alongside clear documentation of designs
      - Engaging with suppliers to explore if new technologies and tools can support the business
      - Determining technical feasibility of upcoming projects and products
  - role: Architect
    time: 2022 - 2024
    company: Cirium
    details: |
      Architect accountable for the design of machine-to-machine interfaces (e.g. HTTP APIs, AMQP).

      Areas focused on:
      - Engaging with stakeholders within the business and the wider organisation to gather requirements
        - These stakeholders include Sales, Product, Project, Data, SREs, and Security
        - Analyse requirements from the above to design solutions that meet the business needs
      - Working with teams to understand where shared infrastructure/solutions may benefit the business
      - Coordinating multiple teams to allow effective delivery
      - Establishing coding practices and drive technical direction amongst development teams
      - Leading teams in the decomposition of issues to aid problem-resolution
      - Effective documentation of design
      - Evaluating new technologies and tools for upcoming projects and train teams in their usage
      - Determining technical feasibility of upcoming projects
  - role: Principal Software Engineer
    time: 2020 - 2022
    company: Cirium
    details: Integrate the software and systems from the recently acquired Snowflake Software into the broader processes and systems of Cirium.
  - role: Senior Software Developer
    time: 2016 - 2020
    company: Snowflake Software Ltd.
    details: Building cloud-based data processing and analysis pipelines for the Aviation industry.
  - role: Software Developer
    time: 2012 - 2016
    company: Snowflake Software Ltd.
    details: Developing Java desktop applications and Java-based web services in an Agile environment.

education:
  - role: Computer Science MEng
    time: 2008 - 2012
    company: Southampton University
    details: Awarded a First Class with Honours

proficiencies:
  - name: Leadership
    detail:
      - I excel at working with teams and guiding them towards a strategic vision.
      - In my current and previous roles at Cirium I have been accountable for driving the engineering department towards a platform based architecture.
  - name: Mentoring
    detail:
      - I get a lot of satisfaction from working with engineers, of all levels, to grow their craft.
      - I especially enjoy pair-programming and the opportunity it gives me to not only train, but learn from other engineers.
  - name: Problem Solving / Creativity
    detail:
      - I deeply enjoy solving problems.
      - From the performance of a SQL query, to the orchestration of multiple teams building out a business case; no problem is too big or small.
  - name: Accountability
    detail:
      - It is important to me that I hold myself to the same standards I hold others to.
      - This has resulted in many high-trust relationships during my career as people can count on me to deliver whilst simultaneously striving to be better next time.
  - name: Communication
    detail:
      - Although I have been known to use metaphors frequently, I excel at communicating with others.
      - In my current role I am responsible for business-wide technical strategy which I have to communicate upwards to C-Level management, and downwards to engineering teams.

tech: [Java, Python, Go, SQL, PHP, HTML, JavaScript, CSS, Spring, Databricks, LLMs, AWS, Azure, GCP, PostgreSQL, Snowflake, Oracle, SQL Server, Elasticsearch, MongoDB, Docker, Terraform, Kubernetes, Git, Unix]
---
<!-- markdownlint-disable MD022 -->
<!-- markdownlint-disable MD033 -->

## Career

{% for job in page.jobs %}
### {{ job.role }}
{: .no-margin }

{{ job.company }} \| {{ job.time }}
{: .small .muted .no-margin }

{% if job.details %}
  <div class="small">
    {{ job.details | markdownify }}
  </div>
{% endif %}
{% endfor %}

## Education

{% for education in page.education %}

### {{ education.role }}
{: .no-margin }

{{ education.company }} \| {{ education.time }}
{: .small .muted .no-margin }

{% if education.details %}
  <div class="small">
    {{ education.details | markdownify }}
  </div>
{% endif %}
{% endfor %}

## Proficiencies

{% for proficiency in page.proficiencies %}
{{ proficiency.name }}
{% for detail in proficiency.detail %}: {{ detail }}
{% endfor %}
{% endfor %}

## Tech

<p>
{% for tech in page.tech %}
  <span class="tech-item small">{{ tech }}</span>
  {% unless forloop.last %}|{% endunless %}
{% endfor %}
</p>

<!-- markdownlint-enable MD033 -->
<!-- markdownlint-enable MD022 -->
