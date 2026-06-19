# Comparativa de Agentes IA — Landing Page Lumina Studio

## Datos del estudiante

| Campo | Valor |
|-------|-------|
| **Nombre completo** | Marcela Cordini |
| **Materia / Curso** | Desarrollo de Sistemas Web (Front End) — PFO2 |
| **Fecha de entrega** | Junio 2026 |

---

## Deploy unificado

**URL de Vercel (portada con 3 accesos):** _[Agregar enlace tras desplegar]_

La portada incluye:
1. Link al prompt utilizado
2. Landing del Agente 1 (Cursor — Composer)
3. Landing del Agente 2 (Codex — gpt-5.3-codex)

### Desplegar en Vercel

```bash
cd landing-page-comparison
npx vercel --prod
```

O conecta el repositorio de GitHub en [vercel.com/new](https://vercel.com/new).

---

## Agentes comparados

| Agente | Plataforma | Modelo | Carpeta |
|--------|-----------|--------|---------|
| Agente 1 | Cursor | Composer | `agent1-cursor/` |
| Agente 2 | Codex (OpenAI) | gpt-5.3-codex | `agent2-codex/` |

**Restricción del trabajo:** ningún código fue editado manualmente; cada landing fue generada de forma autónoma por su agente a partir del mismo prompt.

---

## Prompt exacto utilizado

El mismo prompt se usó en ambos agentes sin modificaciones. También disponible en [`PROMPT.txt`](./PROMPT.txt) y en la portada del sitio.

````markdown
# Identity

You are a senior front-end developer and UI/UX designer. Your task is to autonomously build a complete, production-ready landing page for a fictional brand called **Lumina Studio** — a creative digital agency that helps startups grow through branding, web design, and digital marketing.

Work independently: analyze requirements, choose a coherent visual direction, write all code, and deliver a polished result without asking clarifying questions.

Communication style: precise, implementation-focused. Prioritize clean semantic HTML, accessible markup, responsive CSS, and subtle JavaScript only when it improves UX.

# Success criteria

The deliverable is successful ONLY if ALL of the following are true:

1. A single self-contained landing page opens correctly in a modern browser with no build step required.
2. All seven mandatory sections are present, visually distinct, and reachable from the header navigation.
3. Layout is fully responsive: mobile (320px+), tablet (768px+), and desktop (1024px+).
4. Color palette, typography, spacing, and iconography feel cohesive and professional.
5. Contact form is visually complete (labels, inputs, submit button) but has NO backend — prevent default on submit and show a brief inline success message.
6. Code is readable, commented only where logic is non-obvious, and organized in separate files: `index.html`, `styles.css`, and optionally `script.js`.
7. All text content is original placeholder copy in **Spanish**, tailored to Lumina Studio.
8. No external CSS frameworks (Bootstrap, Tailwind CDN, etc.) — write custom CSS.
9. Google Fonts are allowed via CDN link. Font Awesome or similar icon CDN is allowed.

# Mandatory page sections

Build these sections in this order, each with a unique `id` for anchor navigation:

| Section | HTML id | Minimum content |
|---------|---------|-----------------|
| Header | — | Logo text "Lumina Studio", nav links to all sections below, sticky on scroll |
| Hero | `#inicio` | Headline (H1), subheadline, primary CTA button linking to `#contacto`, optional decorative element |
| About | `#nosotros` | 2 paragraphs about the agency + one stat highlight (e.g., "150+ proyectos") |
| Services | `#servicios` | At least 4 service cards with icon, title, and short description |
| Testimonials | `#testimonios` | At least 3 client reviews with name, role/company, and quote |
| Contact | `#contacto` | Form with: nombre, email, mensaje, submit button |
| Footer | — | Copyright, quick links, social icons (LinkedIn, Instagram, Twitter/X) linking to `#` |

# Design direction

<context brand="Lumina Studio">
- Industry: creative digital agency for startups
- Tone: modern, trustworthy, energetic but not flashy
- Suggested palette: deep navy (#0f172a) + electric violet accent (#7c3aed) + warm white backgrounds
- You may adjust shades for contrast/accessibility (WCAG AA minimum for body text)
- Use smooth scroll behavior and subtle hover transitions on interactive elements
- Hero should feel impactful: generous whitespace, strong typography hierarchy
</context>

# Technical constraints

<constraints>
- DO NOT use React, Vue, Angular, or any JS framework.
- DO NOT require npm, Node, or a bundler to view the page.
- DO NOT use placeholder images from broken URLs — use CSS gradients, SVG shapes, or https://placehold.co/ if an image is needed.
- DO include `<meta name="viewport" content="width=device-width, initial-scale=1.0">`.
- DO use semantic HTML5 tags: `<header>`, `<nav>`, `<main>`, `<section>`, `<footer>`, `<form>`.
- DO make the mobile nav accessible (hamburger menu with toggle is acceptable).
- DO NOT add backend, API calls, or form submission endpoints.
</constraints>

# Implementation steps

Follow this sequence autonomously:

1. **Plan**: Choose typography pair (Google Fonts), finalize color tokens as CSS custom properties in `:root`.
2. **Structure**: Write `index.html` with all sections and placeholder Spanish copy.
3. **Style**: Write `styles.css` — mobile-first, then media queries for tablet and desktop.
4. **Enhance**: If needed, add `script.js` for mobile menu toggle and form submit prevention with success message.
5. **Verify**: Mentally walk through the success criteria checklist before finishing.

# Output format

Deliver the project as files inside a folder named `landing-page/` at the workspace root:

```
landing-page/
├── index.html
├── styles.css
└── script.js   (optional)
```

Do not wrap output in markdown code fences when writing files — create actual files on disk.
Do not include explanations outside the code unless a brief `README.md` inside `landing-page/` is helpful (max 5 lines).

# Example — expected quality bar

<example type="hero-copy">
<h1>Impulsamos startups con diseño que convierte</h1>
<p>Estrategia, branding y experiencias digitales que transforman ideas en marcas memorables.</p>
<a href="#contacto" class="btn-primary">Agenda una consulta gratis</a>
</example>

<example type="service-card">
Icon + "Branding Estratégico" + "Construimos identidades visuales que comunican el valor único de tu startup desde el primer contacto."
</example>

Begin implementation now.
````

### Fundamentos de diseño del prompt

El prompt sigue las guías oficiales de **Anthropic** y **OpenAI**:

| Práctica | Aplicación en el prompt |
|----------|-------------------------|
| **Identidad clara** (OpenAI) | Rol de senior front-end + UX designer |
| **Criterios de éxito** (Anthropic) | Checklist verificable de 9 puntos |
| **Estructura XML/Markdown** (ambos) | Secciones `<context>`, `<constraints>`, `<example>` |
| **Instrucciones explícitas** (OpenAI) | Tabla de secciones obligatorias con IDs HTML |
| **Pasos secuenciales** (Anthropic) | Plan → Structure → Style → Enhance → Verify |
| **Restricciones negativas** (ambos) | Sin frameworks, sin backend, sin build step |
| **Ejemplos few-shot** (OpenAI) | Copy de hero y service card como referencia de calidad |
| **Formato de salida** (Anthropic) | Árbol de archivos esperado |

---

## Capturas de pantalla

### Agente 1 — Cursor (Composer)

![Landing Cursor](./docs/screenshots/agent1-cursor.png)

_[Agregar captura tras verificar el sitio]_

### Agente 2 — Codex (gpt-5.3-codex)

![Landing Codex](./docs/screenshots/agent2-codex.png)

_[Agregar captura tras generar con Codex]_

---

## Estructura del repositorio

```
landing-page-comparison/
├── index.html              # Portada con 3 accesos
├── prompt.html             # Visualizador del prompt
├── PROMPT.txt              # Prompt maestro (idéntico para ambos agentes)
├── portada.css
├── agent1-cursor/          # Landing generada por Cursor
│   ├── index.html
│   ├── styles.css
│   └── script.js
├── agent2-codex/           # Landing generada por Codex
│   ├── index.html
│   ├── styles.css
│   └── script.js
├── docs/screenshots/       # Capturas para el README
├── vercel.json
└── README.md
```

---

## Pasos pendientes

- [ ] Completar datos del estudiante en este README
- [ ] Ejecutar el prompt en **Codex** y guardar resultado en `agent2-codex/`
- [ ] Tomar capturas de pantalla de ambas landings
- [ ] Subir a GitHub y desplegar en Vercel
- [ ] Actualizar el link de deploy en este README
