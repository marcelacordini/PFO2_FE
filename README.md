# Multi-Agent Landing Page Comparison — Lumina Studio

Este proyecto consiste en un entorno de evaluación comparativa donde se analiza la efectividad de las instrucciones iniciales (*prompts*) inyectadas en dos agentes de código autónomos distintos (**Codex** y **Claude Code**). Ambas inteligencias artificiales construyeron, de manera 100% independiente y sin intervención humana manual, una landing page corporativa premium para la agencia ficticia **Lumina Studio**.

---

## 👤 Datos del Estudiante
* **Nombre y Apellido:** Marcela Cordini
* **Asignatura / Evaluación:** Práctica Formativa Obligatoria 2 - Individual Prompt Engineering en Agentes de IA
* **Año:** 2026

---

## 🚀 Despliegue Unificado (Deploy)
El proyecto se encuentra integrado y desplegado en producción bajo un único punto de acceso en Vercel. La portada inicial distribuye las rutas hacia el prompt maestro y hacia los dos desarrollos independientes:

🔗 **[Enlace al Deploy Unificado en Vercel] https://pfo-2-fe.vercel.app/**

---

## 📝 Prompt Maestro Utilizado
A continuación se detalla la instrucción exacta que se le proporcionó en frío a ambos agentes para evaluar su comportamiento y fidelidad de diseño:

```markdown
# Identity
You are a senior front-end developer and a world-class UI/UX designer specializing in high-end editorial digital magazines and premium agency web design. Your task is to autonomously design and build a complete, production-ready, and highly professional landing page for a fictional brand called **Lumina Studio** — a creative digital agency that helps startups grow through branding, web design, and digital marketing.<workflow_guidance>
Work entirely independently: analyze the comprehensive requirements below, choose a distinctive and polished visual direction, write all the code, and deliver a production-ready implementation without asking clarifying questions or requiring any human intervention.</workflow_guidance># Design Direction & Brand Context<context brand="Lumina Studio">- Industry: Creative digital agency catering specifically to modern, high-growth startups.- Tone: Sophisticated, organic, premium, authoritative, and warm.- Visual Quality Standards: Avoid "AI slop" or standard harsh purple-on-white gradients. Prioritize generous whitespace, editorial typography hierarchy, and soft tactile depth using cards over an organic colored background.- Official Color Palette (Refined Organic & Tactile):  * Global Body Background: A warm, tactile cream/sand tone (#F4F3EF) to completely eliminate clinical white backgrounds and give an elegant linen-paper or gallery feel.  * Card & Container Backgrounds: Pure White (#FFFFFF) used strategically inside grid cards and form containers to make them pop softly over the warm sand background.  * Typography & Structure: Deep Charcoal Black (#1A1A1A) for intense readability and a grounded feel (WCAG AA minimum standard).  * Accent & Brand Color: Modern Emerald Green (#006D5B) used intentionally for key interactive elements, navigation markers, active states, and primary icons.  * Call to Action (CTA): High-contrast Emerald Green (#006D5B) or a sharp deep contrast block to instantly drive user focus.- Hero Visual Showcase (Critical Structure & Local Asset):  * The right side of the Hero must feature a sophisticated visual container card (`.abstract-canvas`) mimicking a high-end magazine cover layout.  * Card Structure: It must be a pure white card (`background-color: #FFFFFF`) with smooth rounded corners (`border-radius: 12px`), a clear border (`border: 1px solid var(--border-soft)`), and an explicit `overflow: hidden`.  * Cover Image (`.canvas-image-bg`): Inside this card, you must strictly use the user's local asset located one level up in the directory tree inside the img folder: `../img/imagen.png` (`height: 78%; width: 100%; position: absolute; top: 0; left: 0; background-size: cover; background-position: center;`). Do not use external URLs; reference the specific local file path `../img/imagen.png`.  * Bottom Text Fraction: The remaining bottom 20-25% of the card must be clean, solid white space to elegantly accommodate the text element "EDICIÓN 2026" underlined by a sutil emerald tracker line.  * Effects: Apply an elegant, subtle emerald/greenish glow effect underneath using layers of `box-shadow` combined with a smooth transition on hover (`transform: scale(1.03)`).- Typography Pair (Premium Editorial Mapping):  * Headers & Brand Logo: Use 'Playfair Display' (Serif) integrated via Google Fonts. The main brand logo text "Lumina Studio" and the massive hero titles like "Transformamos visiones en marcas de" must strictly use this elegant serif style with high typographic contrast.  * Body text: Use 'Inter' (Sans-Serif) for a ultra-clean, highly functional, and legible reading experience on prose and metadata cards.- Interaction & Motion: Smooth CSS transitions (0.4s ease-in-out). Apply elegant, subtle card elevations (box-shadow) and image scale filters on hover states. Ensure menus and lists use `list-style: none` to prevent default bullet artifacts.</context># Technical Constraints<constraints>- DO NOT use React, Vue, Angular, or any JavaScript library or framework.- DO NOT use external utility frameworks (such as Tailwind CDN, Bootstrap, etc.) — write raw, custom, well-organized CSS using CSS variables.- DO NOT require npm, Node.js, or any bundler/build step. The layout must execute perfectly by opening index.html directly in any modern browser.- DO include `<meta name="viewport" content="width=device-width, initial-scale=1.0">` inside the document head.- DO use semantic HTML5 structural components: `<header>`, `<nav>`, `<main>`, `<section>`, `<footer>`, `<form>`.- DO implement a fully accessible mobile navigation (a clean hamburger toggle menu using vanilla JavaScript is required).- DO NOT add real backend APIs or server-side submission endpoints. Handle form verification entirely client-side.- Local Asset Rule: For the hero card background, use exactly the relative path `../img/imagen.png`. For other secondary generic placeholders (like services or cards if needed), use clean CSS gradients or inline SVGs.</constraints># Mandatory Page Sections
Build these seven mandatory sections in this exact order, assigning a unique structural HTML `id` attribute to each for anchor link navigation:

| Section Name | HTML id | Minimum Component & Content Requirements |
|:---|:---|:---|
| Header | — | Logo text "Lumina Studio" using the premium 'Playfair Display' font, clean nav links pointing to all sections below, sticky layout position on scroll with a subtle bottom shadow. |
| Hero | `#inicio` | High-impact headline (H1) using 'Playfair Display', an elegant subheadline, a primary CTA button in Emerald Green linking directly to `#contacto`, and the sophisticated local image cover layout detailed in Context. |
| About | `#nosotros` | At least 2 well-crafted prose paragraphs detailing the agency's philosophy + one prominent metric highlight (e.g., "150+ proyectos" in bold, elegant serif typography). |
| Services | `#servicios` | A responsive grid containing at least 4 individual service cards. Each card must be a pure white block (#FFFFFF) with an emerald icon, a title, and a short description. |
| Testimonials | `#testimonios` | A visual grid containing at least 3 distinct client reviews, featuring client names, roles/companies, a 5-star visual rating, and their quote. |
| Contact | `#contacto` | A visually complete form box styled as a white container card over the sand background. Features styled labels, inputs (`nombre`, `email`), a text area (`mensaje`), and a prominent submit button. |
| Footer | — | Copyright declaration, legal/quick links, and minimal social media icons (LinkedIn, Instagram, Twitter/X) linking to `#`. |# Detailed Instructions & Success Criteria
Your deliverable will be considered successful ONLY if it complies with every parameter within this checklist:1. **Self-Contained Portability:** The output must compile cleanly into separate, readable, and vanilla files inside a single root folder.2. **Responsive Execution:** The layout must be strictly fluid and mobile-first, adapting seamlessly across mobile phones (320px+), tablets (768px+), and desktops (1024px+).3. **Proactive Default to Action:** Fully implement all requested features and section layouts rather than just suggesting them or writing partial layouts. Write full copy text; do not clip sections short.4. **No Dummy Greek Text:** The use of "Lorem Ipsum" is strictly forbidden. You must write original, realistic, and highly compelling marketing copy in **Spanish**, explicitly tailored to a creative digital agency context.5. **Form Interception:** Configure the contact form to intercept standard browser submission behavior via `preventDefault()`. Upon submission, hide or clear the form states and display a clean, brief, inline success confirmation message within the UI box using the brand colors.6. **Code Readability:** Structure your custom CSS using clean architecture principles, and include short developer comments only where the specific logic or layout hack is non-obvious.# Examples<examples>
  <example type="hero-copy">    <h1 style="font-family: 'Playfair Display';">Transformamos visiones en marcas de impacto</h1>
    <p>Estrategia y diseño de vanguardia para startups que no temen desafiar el status quo.</p>
    <a href="#contacto" class="btn-primary">Inicia tu proyecto</a>
  </example>
  <example type="hero-visual-canvas">    <div class="hero-visual-block">
      <div class="abstract-canvas">
        <div class="canvas-image-bg" style="background-image: url('../img/imagen.png');"></div>
        <div class="geometric-overlay-card">
          <span class="canvas-tag">EDICIÓN 2026</span>
          <div class="canvas-line"></div>
        </div>
      </div>
    </div>
  </example>
</examples># Output Format
Deliver the entire project structure as distinct, independent files saved inside a directory named exactly `landing-page/` at the root of your workspace:```text
landing-page/
├── index.html
├── styles.css
└── script.js
CRITICAL PRODUCTION CUE: Do not wrap your final file outputs in generic markdown formatting code fences when writing to disk. Generate the true files natively. You may include a sutil README.md file inside the folder (maximum of 5 lines) if needed for verification purposes.
Begin implementation now.