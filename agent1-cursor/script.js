const navToggle = document.querySelector('.nav-toggle');
const navList = document.querySelector('.nav__list');
const navLinks = document.querySelectorAll('.nav__list a');
const contactForm = document.getElementById('contact-form');
const formSuccess = document.getElementById('form-success');

navToggle.addEventListener('click', () => {
  const isOpen = navToggle.getAttribute('aria-expanded') === 'true';
  navToggle.setAttribute('aria-expanded', String(!isOpen));
  navList.classList.toggle('is-open');
});

navLinks.forEach((link) => {
  link.addEventListener('click', () => {
    navToggle.setAttribute('aria-expanded', 'false');
    navList.classList.remove('is-open');
  });
});

contactForm.addEventListener('submit', (e) => {
  e.preventDefault();
  formSuccess.hidden = false;
  contactForm.reset();
  setTimeout(() => {
    formSuccess.hidden = true;
  }, 5000);
});
