<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NEXUSMALL · simple & friendly shop</title>
  <!-- Font Awesome for clean icons (lightweight) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    /* ---------- GLOBAL RESET & VARIABLES ---------- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #fefcf9;           /* warm off-white */
      --surface: #ffffff;
      --text-primary: #1e1a24;
      --text-secondary: #5b5266;
      --text-muted: #8b8194;
      --accent: #c17b4b;       /* warm terracotta */
      --accent-soft: #f3e9e1;
      --border-light: #ede7e1;
      --radius-card: 24px;
      --radius-btn: 40px;
      --shadow-sm: 0 6px 16px rgba(0, 0, 0, 0.03), 0 2px 6px rgba(0, 0, 0, 0.02);
      --shadow-hover: 0 18px 28px -8px rgba(0, 0, 0, 0.08), 0 6px 12px rgba(0, 0, 0, 0.02);
      --font: system-ui, -apple-system, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
    }

    body {
      font-family: var(--font);
      background: var(--bg);
      color: var(--text-primary);
      line-height: 1.5;
      padding: 0 24px;
      min-height: 100vh;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 8px;
    }

    /* ---------- HEADER (SIMPLE & FRIENDLY) ---------- */
    .top-bar {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 20px 0 12px;
      flex-wrap: wrap;
      gap: 16px;
    }

    .logo {
      font-size: 1.9rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      color: var(--text-primary);
      display: flex;
      align-items: center;
      gap: 6px;
    }

    .logo i {
      color: var(--accent);
      font-size: 1.8rem;
    }

    .logo span {
      font-weight: 300;
      color: var(--accent);
      font-size: 1.5rem;
      margin-left: 2px;
    }

    /* simple nav links — visible, friendly */
    .main-nav {
      display: flex;
      gap: 28px;
      font-weight: 500;
      color: var(--text-secondary);
      font-size: 1rem;
    }

    .main-nav a {
      text-decoration: none;
      color: inherit;
      padding: 4px 0;
      border-bottom: 2px solid transparent;
      transition: border-color 0.15s, color 0.15s;
    }

    .main-nav a:hover {
      color: var(--accent);
      border-bottom-color: var(--accent);
    }

    .header-icons {
      display: flex;
      gap: 22px;
      font-size: 1.35rem;
      color: var(--text-secondary);
    }

    .header-icons i {
      cursor: default;
      transition: color 0.15s;
    }

    .header-icons i:hover {
      color: var(--accent);
    }

    /* ---------- HERO / WELCOME SECTION (clear & guiding) ---------- */
    .welcome-section {
      background: var(--surface);
      border-radius: 32px;
      padding: 36px 40px;
      margin: 12px 0 36px;
      box-shadow: var(--shadow-sm);
      border: 1px solid var(--border-light);
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 28px;
    }

    .welcome-text h1 {
      font-size: 2.2rem;
      font-weight: 600;
      letter-spacing: -0.02em;
      line-height: 1.2;
      color: var(--text-primary);
      margin-bottom: 8px;
    }

    .welcome-text p {
      color: var(--text-secondary);
      font-size: 1.05rem;
      max-width: 480px;
    }

    .welcome-cta {
      background: var(--accent-soft);
      padding: 12px 26px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 1rem;
      color: #6d4c33;
      display: inline-flex;
      align-items: center;
      gap: 10px;
      border: 1px solid #e3d5ca;
      transition: background 0.15s;
      white-space: nowrap;
    }

    .welcome-cta i {
      font-size: 1rem;
    }

    /* ---------- SIMPLE SEARCH / FILTER (user-friendly) ---------- */
    .search-row {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 28px;
      gap: 16px;
    }

    .search-box {
      background: var(--surface);
      border-radius: 100px;
      padding: 12px 22px;
      display: flex;
      align-items: center;
      gap: 12px;
      box-shadow: var(--shadow-sm);
      border: 1px solid var(--border-light);
      flex: 1 1 280px;
    }

    .search-box i {
      color: var(--text-muted);
      font-size: 1.1rem;
    }

    .search-box input {
      border: none;
      background: transparent;
      font-size: 0.95rem;
      width: 100%;
      outline: none;
      font-family: var(--font);
      color: var(--text-primary);
    }

    .search-box input::placeholder {
      color: #b2a8b5;
      font-weight: 400;
    }

    .filter-tabs {
      display: flex;
      gap: 8px;
      flex-wrap: wrap;
    }

    .filter-tab {
      background: var(--surface);
      border: 1px solid var(--border-light);
      padding: 8px 18px;
      border-radius: 40px;
      font-size: 0.85rem;
      font-weight: 500;
      color: var(--text-secondary);
      transition: all 0.15s;
      cursor: default;
      box-shadow: var(--shadow-sm);
    }

    .filter-tab.active {
      background: var(--text-primary);
      color: #fff;
      border-color: var(--text-primary);
    }

    .filter-tab:hover {
      border-color: var(--accent);
      color: var(--accent);
    }

    /* ---------- PRODUCT GRID (clear cards, friendly spacing) ---------- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
      gap: 28px;
      margin: 16px 0 48px;
    }

    .product-card {
      background: var(--surface);
      border-radius: var(--radius-card);
      padding: 18px 18px 22px;
      box-shadow: var(--shadow-sm);
      border: 1px solid var(--border-light);
      transition: transform 0.18s ease, box-shadow 0.18s ease;
      display: flex;
      flex-direction: column;
      position: relative;
    }

    .product-card:hover {
      transform: translateY(-5px);
      box-shadow: var(--shadow-hover);
      border-color: #dfd6cf;
    }

    /* product image area */
    .product-image {
      width: 100%;
      aspect-ratio: 1 / 1;
      background: #f9f6f3;
      border-radius: 18px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 16px;
      color: #baaea6;
      font-size: 3.2rem;
      border: 1px solid #f0eae5;
      transition: background 0.2s;
    }

    .product-card:hover .product-image {
      background: #f3ede8;
    }

    /* badge */
    .badge {
      align-self: flex-start;
      background: var(--accent-soft);
      color: #6d4c33;
      font-size: 0.7rem;
      font-weight: 600;
      letter-spacing: 0.2px;
      padding: 4px 12px;
      border-radius: 40px;
      text-transform: uppercase;
      margin-bottom: 8px;
      border: 1px solid #edd9cc;
    }

    .product-title {
      font-size: 1.15rem;
      font-weight: 600;
      margin-bottom: 4px;
      color: var(--text-primary);
      line-height: 1.3;
    }

    .product-sub {
      font-size: 0.8rem;
      color: var(--text-muted);
      margin-bottom: 8px;
      font-weight: 400;
    }

    .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      margin-bottom: 12px;
      font-size: 0.8rem;
      color: #f0b34b;
    }

    .rating span {
      color: var(--text-muted);
      font-size: 0.75rem;
      margin-left: 6px;
    }

    .price-row {
      display: flex;
      align-items: baseline;
      gap: 10px;
      margin-bottom: 16px;
      flex-wrap: wrap;
    }

    .current-price {
      font-size: 1.5rem;
      font-weight: 700;
      color: var(--text-primary);
      letter-spacing: -0.02em;
    }

    .old-price {
      font-size: 0.9rem;
      color: #b9afbc;
      text-decoration: line-through;
      font-weight: 400;
    }

    .discount {
      background: #eae2db;
      color: #7f5a42;
      font-size: 0.7rem;
      font-weight: 600;
      padding: 2px 8px;
      border-radius: 30px;
      letter-spacing: 0.2px;
    }

    /* simple color options — friendly and clickable-looking */
    .color-options {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-bottom: 18px;
    }

    .color-dot {
      width: 26px;
      height: 26px;
      border-radius: 50%;
      border: 2px solid transparent;
      cursor: default;
      transition: transform 0.1s, border-color 0.1s;
      box-shadow: 0 2px 6px rgba(0,0,0,0.04);
    }

    .color-dot:hover {
      transform: scale(1.12);
    }

    .color-dot.active {
      border-color: var(--accent);
      box-shadow: 0 0 0 2px var(--surface), 0 0 0 3px var(--accent);
    }

    .color-label {
      font-size: 0.75rem;
      color: var(--text-muted);
      margin-left: 2px;
    }

    /* BIG friendly add-to-cart button */
    .btn-add {
      background: var(--text-primary);
      color: #fff;
      border: none;
      padding: 14px 18px;
      border-radius: var(--radius-btn);
      font-weight: 600;
      font-size: 0.95rem;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      margin-top: auto;
      cursor: default;
      transition: background 0.2s, transform 0.1s;
      letter-spacing: 0.2px;
      width: 100%;
      border: 1px solid transparent;
    }

    .btn-add i {
      font-size: 1rem;
    }

    .btn-add:hover {
      background: #2e2338;
    }

    .btn-add:active {
      transform: scale(0.98);
    }

    /* ---------- FOOTER / TRUST (simple & reassuring) ---------- */
    .trust-footer {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: center;
      gap: 36px;
      padding: 28px 0 20px;
      border-top: 1px solid var(--border-light);
      margin-top: 12px;
      color: var(--text-secondary);
      font-size: 0.9rem;
    }

    .trust-item {
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .trust-item i {
      color: var(--accent);
      font-size: 1.1rem;
      width: 20px;
    }

    .footer-note {
      text-align: center;
      color: #b7afb9;
      font-size: 0.75rem;
      padding: 24px 0 30px;
      letter-spacing: 0.2px;
    }

    /* ---------- RESPONSIVE TOUCHES ---------- */
    @media (max-width: 700px) {
      body {
        padding: 0 16px;
      }
      .welcome-section {
        padding: 24px 22px;
      }
      .welcome-text h1 {
        font-size: 1.8rem;
      }
      .top-bar {
        padding: 16px 0 8px;
      }
      .logo {
        font-size: 1.6rem;
      }
      .main-nav {
        gap: 18px;
        font-size: 0.9rem;
      }
      .header-icons {
        gap: 16px;
        font-size: 1.2rem;
      }
      .product-grid {
        gap: 20px;
      }
      .trust-footer {
        gap: 20px;
        font-size: 0.8rem;
      }
    }

    @media (max-width: 480px) {
      .welcome-section {
        flex-direction: column;
        align-items: flex-start;
      }
      .search-row {
        flex-direction: column;
        align-items: stretch;
      }
      .filter-tabs {
        justify-content: flex-start;
      }
      .main-nav {
        display: none; /* keep clean on small screens, but not needed for demo */
      }
      .trust-footer {
        flex-direction: column;
        align-items: flex-start;
        gap: 12px;
      }
    }

    /* focus for accessibility */
    .btn-add:focus-visible,
    .filter-tab:focus-visible,
    .color-dot:focus-visible {
      outline: 2px solid var(--accent);
      outline-offset: 3px;
    }

    /* subtle helper — no real cart, just friendly */
    .cart-badge-demo {
      display: inline-block;
      background: var(--accent);
      color: #fff;
      font-size: 0.7rem;
      font-weight: 700;
      border-radius: 30px;
      padding: 1px 7px;
      margin-left: 6px;
    }
  </style>
</head>
<body>
  <div class="container">

    <!-- ========== HEADER ========== -->
    <div class="top-bar">
      <div class="logo">
        <i class="fas fa-cube"></i> NEXUS<span>MALL</span>
      </div>
      <nav class="main-nav">
        <a href="#">Home</a>
        <a href="#">Shop</a>
        <a href="#">New in</a>
        <a href="#">Sale</a>
      </nav>
      <div class="header-icons">
        <i class="fas fa-search" aria-label="Search"></i>
        <i class="far fa-heart" aria-label="Wishlist"></i>
        <i class="fas fa-shopping-bag" aria-label="Cart"></i>
      </div>
    </div>

    <!-- ========== WELCOME / HERO (simple & friendly) ========== -->
    <div class="welcome-section">
      <div class="welcome-text">
        <h1>Hi there 👋<br>Find something you love.</h1>
        <p>Everyday essentials, thoughtfully designed. Easy returns, free shipping over $50.</p>
      </div>
      <div class="welcome-cta">
        <i class="fas fa-arrow-right"></i> Browse bestsellers
      </div>
    </div>

    <!-- ========== SEARCH & FILTER (user-friendly) ========== -->
    <div class="search-row">
      <div class="search-box">
        <i class="fas fa-search"></i>
        <input type="text" placeholder="Search products... (e.g., headphones)" aria-label="Search products">
      </div>
      <div class="filter-tabs">
        <span class="filter-tab active">All</span>
        <span class="filter-tab">Audio</span>
        <span class="filter-tab">Bags</span>
        <span class="filter-tab">Home</span>
        <span class="filter-tab">Sale</span>
      </div>
    </div>

    <!-- ========== PRODUCT GRID ========== -->
    <div class="product-grid">

      <!-- Product 1: Headphones -->
      <div class="product-card">
        <div class="product-image">
          <i class="fas fa-headphones-alt"></i>
        </div>
        <span class="badge">🔥 Best seller</span>
        <h3 class="product-title">Aura wireless headphones</h3>
        <div class="product-sub">Noise cancel · 40h battery</div>
        <div class="rating">
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star-half-alt"></i>
          <span>(1.2k)</span>
        </div>
        <div class="price-row">
          <span class="current-price">$129</span>
          <span class="old-price">$189</span>
          <span class="discount">-31%</span>
        </div>
        <div class="color-options">
          <div class="color-dot active" style="background: #2b2b2b;" title="Midnight black"></div>
          <div class="color-dot" style="background: #b9a7a0;" title="Sandstone beige"></div>
          <div class="color-dot" style="background: #5f6b7a;" title="Storm blue"></div>
          <span class="color-label">+2</span>
        </div>
        <button class="btn-add">
          <i class="fas fa-cart-plus"></i> Add to cart
        </button>
      </div>

      <!-- Product 2: Backpack -->
      <div class="product-card">
        <div class="product-image">
          <i class="fas fa-bag-shopping"></i>
        </div>
        <span class="badge" style="background: #e8dfd8; color: #5f4a3a;">✨ New</span>
        <h3 class="product-title">Nexus everyday backpack</h3>
        <div class="product-sub">Water-repellent · 16" laptop</div>
        <div class="rating">
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="far fa-star"></i>
          <span>(324)</span>
        </div>
        <div class="price-row">
          <span class="current-price">$89</span>
          <span class="old-price">$119</span>
          <span class="discount">-25%</span>
        </div>
        <div class="color-options">
          <div class="color-dot active" style="background: #6d5c4c;" title="Cacao"></div>
          <div class="color-dot" style="background: #2e3b3b;" title="Deep forest"></div>
          <div class="color-dot" style="background: #c2b9ad;" title="Stone"></div>
        </div>
        <button class="btn-add">
          <i class="fas fa-cart-plus"></i> Add to cart
        </button>
      </div>

      <!-- Product 3: Mug set -->
      <div class="product-card">
        <div class="product-image">
          <i class="fas fa-mug-hot"></i>
        </div>
        <span class="badge" style="background: #e8dfd8; color: #5f4a3a;">🧡 Handmade</span>
        <h3 class="product-title">Terra ceramic mug set</h3>
        <div class="product-sub">Set of 2 · speckled glaze</div>
        <div class="rating">
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <span>(89)</span>
        </div>
        <div class="price-row">
          <span class="current-price">$38</span>
          <span class="old-price">$52</span>
          <span class="discount">-27%</span>
        </div>
        <div class="color-options">
          <div class="color-dot active" style="background: #b48c6e;" title="Clay"></div>
          <div class="color-dot" style="background: #8c7b6b;" title="Taupe"></div>
          <div class="color-dot" style="background: #6a5e54;" title="Espresso"></div>
        </div>
        <button class="btn-add">
          <i class="fas fa-cart-plus"></i> Add to cart
        </button>
      </div>

      <!-- Product 4: simple cotton tote (extra item to show grid) -->
      <div class="product-card">
        <div class="product-image">
          <i class="fas fa-shopping-bag"></i>
        </div>
        <span class="badge" style="background: #e8dfd8; color: #5f4a3a;">🌿 Organic</span>
        <h3 class="product-title">Everyday cotton tote</h3>
        <div class="product-sub">Heavyweight canvas · inner pocket</div>
        <div class="rating">
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="far fa-star"></i>
          <span>(156)</span>
        </div>
        <div class="price-row">
          <span class="current-price">$24</span>
          <span class="old-price">$32</span>
          <span class="discount">-25%</span>
        </div>
        <div class="color-options">
          <div class="color-dot active" style="background: #d9cfc4;" title="Natural"></div>
          <div class="color-dot" style="background: #3f4b4b;" title="Slate"></div>
          <div class="color-dot" style="background: #b75e3a;" title="Rust"></div>
        </div>
        <button class="btn-add">
          <i class="fas fa-cart-plus"></i> Add to cart
        </button>
      </div>
    </div>

    <!-- ========== TRUST & REASSURANCE ========== -->
    <div class="trust-footer">
      <div class="trust-item"><i class="fas fa-truck"></i> Free shipping over $50</div>
      <div class="trust-item"><i class="fas fa-undo-alt"></i> 30‑day easy returns</div>
      <div class="trust-item"><i class="fas fa-lock"></i> Secure checkout</div>
      <div class="trust-item"><i class="fas fa-headset"></i> 24/7 support</div>
    </div>

    <!-- friendly note -->
    <div class="footer-note">
      NEXUSMALL · simple & friendly shopping
    </div>
  </div>
</body>
</html>
