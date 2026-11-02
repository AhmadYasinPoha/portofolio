/* ============================================
   Ahmad Yasin Pohan – Portfolio Scripts
   ============================================ */

document.addEventListener('DOMContentLoaded', () => {
  // --- Initialize Lucide Icons ---
  if (window.lucide) window.lucide.createIcons();

  const motionQuery = window.matchMedia ? window.matchMedia('(prefers-reduced-motion: reduce)') : null;
  const prefersReducedMotion = motionQuery ? motionQuery.matches : false;
  const scrollBehavior = prefersReducedMotion ? 'auto' : 'smooth';

  // --- Theme Toggle ---
  const root = document.documentElement;
  const themeToggle = document.getElementById('themeToggle');
  const moonIcon = document.getElementById('moonIcon');
  const sunIcon = document.getElementById('sunIcon');

  let storedTheme = null;
  try { storedTheme = localStorage.getItem('ayp-portfolio-theme'); } catch (e) { /* noop */ }
  const prefersDark = window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches;

  function syncThemeToggle(isDark) {
    if (moonIcon) moonIcon.classList.toggle('hidden', isDark);
    if (sunIcon) sunIcon.classList.toggle('hidden', !isDark);
    if (!themeToggle) return;
    themeToggle.setAttribute('aria-pressed', String(isDark));
    themeToggle.setAttribute('aria-label', isDark ? 'Aktifkan mode terang' : 'Aktifkan mode gelap');
  }

  function applyTheme(isDark) {
    root.classList.toggle('dark', isDark);
    syncThemeToggle(isDark);
    try { localStorage.setItem('ayp-portfolio-theme', isDark ? 'dark' : 'light'); } catch (e) { /* noop */ }
  }

  applyTheme(storedTheme ? storedTheme === 'dark' : prefersDark);
  if (themeToggle) {
    themeToggle.addEventListener('click', () => applyTheme(!root.classList.contains('dark')));
  }

  // --- Mobile Menu ---
  const menuToggle = document.getElementById('menuToggle');
  const mobileMenu = document.getElementById('mobileMenu');

  function isMenuOpen() {
    return !!mobileMenu && !mobileMenu.classList.contains('hidden');
  }

  function setMenuOpen(open) {
    if (!mobileMenu || !menuToggle) return;
    mobileMenu.classList.toggle('hidden', !open);
    menuToggle.setAttribute('aria-expanded', String(open));
    menuToggle.setAttribute('aria-label', open ? 'Tutup menu' : 'Buka menu');
  }

  if (menuToggle && mobileMenu) {
    menuToggle.addEventListener('click', () => setMenuOpen(!isMenuOpen()));

    mobileMenu.querySelectorAll('a').forEach(link =>
      link.addEventListener('click', () => setMenuOpen(false))
    );

    // Close with Escape and return focus to the toggle
    document.addEventListener('keydown', (event) => {
      if (event.key === 'Escape' && isMenuOpen()) {
        setMenuOpen(false);
        menuToggle.focus();
      }
    });

    // Close when clicking outside the menu
    document.addEventListener('click', (event) => {
      if (!isMenuOpen()) return;
      if (!mobileMenu.contains(event.target) && !menuToggle.contains(event.target)) setMenuOpen(false);
    });

    // Close when the layout switches to desktop
    window.addEventListener('resize', () => {
      if (isMenuOpen() && window.innerWidth >= 768) setMenuOpen(false);
    }, { passive: true });
  }

  // --- Dynamic Year ---
  const yearEl = document.getElementById('year');
  if (yearEl) yearEl.textContent = new Date().getFullYear();

  // --- Scroll Reveal (IntersectionObserver) ---
  const revealElements = document.querySelectorAll('.reveal');
  if (revealElements.length > 0 && 'IntersectionObserver' in window) {
    const revealObserver = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add('revealed');
          revealObserver.unobserve(entry.target);
        }
      });
    }, {
      threshold: 0.12,
      rootMargin: '0px 0px -40px 0px'
    });
    revealElements.forEach(el => revealObserver.observe(el));
  } else {
    // Fallback: show everything
    revealElements.forEach(el => el.classList.add('revealed'));
  }

  // --- Back to Top Button ---
  const backToTop = document.getElementById('backToTop');
  if (backToTop) {
    let ticking = false;

    function syncBackToTop() {
      backToTop.classList.toggle('visible', window.scrollY > 400);
      ticking = false;
    }

    window.addEventListener('scroll', () => {
      if (ticking) return;
      ticking = true;
      window.requestAnimationFrame(syncBackToTop);
    }, { passive: true });

    syncBackToTop();

    backToTop.addEventListener('click', () => {
      window.scrollTo({ top: 0, behavior: scrollBehavior });
    });
  }

  // --- Active Nav Highlighting ---
  const sections = document.querySelectorAll('section[id]');
  const navLinks = document.querySelectorAll('header nav a[href^="#"]');

  if (sections.length > 0 && navLinks.length > 0 && 'IntersectionObserver' in window) {
    const navObserver = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          const id = entry.target.getAttribute('id');
          navLinks.forEach(link => {
            const isMatch = link.getAttribute('href') === `#${id}`;
            link.classList.toggle('nav-active', isMatch);
            if (isMatch) {
              link.setAttribute('aria-current', 'true');
            } else {
              link.removeAttribute('aria-current');
            }
          });
        }
      });
    }, {
      threshold: 0.15,
      rootMargin: '-80px 0px -50% 0px'
    });
    sections.forEach(section => navObserver.observe(section));
  }
});
