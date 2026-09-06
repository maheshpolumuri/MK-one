<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>FLMEDUSHOP · simple e‑commerce</title>
  <!-- Font & Icons (lightweight) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: system-ui, -apple-system, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
      background: #f8f6f2;  /* soft warm background */
      color: #1e1e2a;
      line-height: 1.5;
      padding: 0 16px;
    }

    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 0 12px;
    }

    /* header */
    .header {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
      padding: 14px 0;
      border-bottom: 1px solid #e6e2da;
      background: rgba(248, 246, 242, 0.8);
      backdrop-filter: blur(4px);
      position: sticky;
      top: 0;
      z-index: 30;
    }

    .brand {
      font-weight: 700;
      font-size: 1.6rem;
      letter-spacing: -0.5px;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .brand i { color: #c35a3a; }
    .brand span { color: #c35a3a; }

    .nav {
      display: flex;
      gap: 6px;
      flex-wrap: wrap;
    }
    .nav a {
      text-decoration: none;
      color: #3d3d4a;
      padding: 6px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      transition: 0.2s;
    }
    .nav a:hover {
      background: #e6dfd7;
      color: #1e1e2a;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    .header-actions button {
      background: transparent;
      border: none;
      font-size: 1.2rem;
      color: #2d2d3a;
      padding: 6px 10px;
      border-radius: 30px;
      transition: 0.15s;
      cursor: pointer;
    }
    .header-actions button:hover {
      background: #e6dfd7;
    }
    .cart-badge {
      background: #c35a3a;
      color: white;
      border-radius: 30px;
      padding: 0 8px;
      font-size: 0.8rem;
      font-weight: 600;
      margin-left: 2px;
    }

    /* search */
    .search-wrap {
      display: flex;
      background: white;
      border-radius: 60px;
      padding: 2px 6px 2px 16px;
      border: 1px solid #d6d0c6;
      transition: 0.2s;
    }
    .search-wrap:focus-within {
      border-color: #c35a3a;
      box-shadow: 0 0 0 3px rgba(195, 90, 58, 0.15);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 8px 0;
      font-size: 0.95rem;
      min-width: 140px;
      outline: none;
    }
    .search-wrap button {
      background: transparent;
      border: none;
      padding: 6px 10px;
      color: #5a5a6a;
      cursor: pointer;
    }

    /* hero */
    .hero {
      background: #eae3da;  /* neutral base */
      background-image: radial-gradient(circle at 10% 30%, #f3ede7 0%, #d9d0c4 100%);
      border-radius: 32px;
      padding: 48px 32px;
      margin: 24px 0 32px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
    }
    .hero-text {
      max-width: 520px;
    }
    .hero-text h1 {
      font-size: 2.6rem;
      font-weight: 700;
      line-height: 1.2;
      color: #1e1e2a;
    }
    .hero-text p {
      font-size: 1.1rem;
      color: #3d3d4a;
      margin: 12px 0 20px;
    }
    .btn-group {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
    }
    .btn {
      border: none;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      background: #1e1e2a;
      color: white;
      cursor: pointer;
      transition: 0.2s;
      display: inline-flex;
      align-items: center;
      gap: 8px;
    }
    .btn-primary {
      background: #c35a3a;
    }
    .btn-primary:hover {
      background: #a8482e;
      transform: scale(1.01);
    }
    .btn-outline {
      background: transparent;
      border: 1.5px solid #2d2d3a;
      color: #1e1e2a;
    }
    .btn-outline:hover {
      background: #1e1e2a;
      color: white;
    }
    .hero-img {
      flex: 0 0 240px;
      height: 200px;
      background: #d6cdc0;
      border-radius: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 4rem;
      color: #5a4d3e;
    }
    @media (max-width: 700px) {
      .hero { flex-direction: column; text-align: center; }
      .hero-img { width: 100%; max-width: 300px; }
    }

    /* section */
    .section {
      margin: 40px 0;
    }
    .section-title {
      font-size: 1.7rem;
      font-weight: 650;
      margin-bottom: 18px;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }
    .section-title a {
      font-size: 0.95rem;
      font-weight: 500;
      color: #c35a3a;
      text-decoration: none;
    }

    /* categories */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(140px, 1fr));
      gap: 16px;
    }
    .cat-item {
      background: white;
      padding: 18px 10px;
      border-radius: 24px;
      text-align: center;
      box-shadow: 0 2px 8px rgba(0,0,0,0.02);
      border: 1px solid #e6e0d6;
      transition: 0.15s;
      cursor: pointer;
    }
    .cat-item:hover {
      border-color: #c35a3a;
      transform: translateY(-4px);
      background: #fdfaf7;
    }
    .cat-item i {
      font-size: 1.8rem;
      color: #c35a3a;
      margin-bottom: 6px;
    }
    .cat-item h4 {
      font-weight: 600;
      font-size: 1rem;
    }
    .cat-item small {
      color: #6a6a7a;
      font-size: 0.8rem;
    }

    /* products */
    .prod-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(190px, 1fr));
      gap: 18px;
    }
    .prod-card {
      background: white;
      border-radius: 24px;
      padding: 12px 12px 16px;
      border: 1px solid #e6e0d6;
      transition: 0.2s;
      display: flex;
      flex-direction: column;
    }
    .prod-card:hover {
      border-color: #c35a3a;
      box-shadow: 0 6px 18px rgba(0,0,0,0.03);
    }
    .prod-card .img-box {
      background: #ede8e1;
      border-radius: 18px;
      height: 140px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 2.6rem;
      color: #4d3f30;
      margin-bottom: 8px;
    }
    .prod-card .title {
      font-weight: 600;
      font-size: 1rem;
    }
    .prod-card .price {
      font-weight: 700;
      font-size: 1.1rem;
      margin: 4px 0;
    }
    .prod-card .old {
      text-decoration: line-through;
      color: #7a7a8a;
      font-size: 0.85rem;
      margin-left: 6px;
      font-weight: 400;
    }
    .prod-card .rating {
      color: #d4a14b;
      font-size: 0.85rem;
      letter-spacing: 1px;
    }
    .prod-card .add-btn {
      margin-top: 8px;
      background: #1e1e2a;
      border: none;
      color: white;
      padding: 10px 0;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: 0.2s;
    }
    .prod-card .add-btn:hover {
      background: #c35a3a;
    }

    /* deal */
    .deal-box {
      background: #1e1e2a;
      border-radius: 32px;
      padding: 28px 32px;
      color: #f0ede8;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
    }
    .deal-box .info h3 {
      font-size: 1.8rem;
    }
    .deal-box .info .big-price {
      font-size: 2rem;
      font-weight: 700;
      color: #f2b48c;
    }
    .deal-box .info .old-price {
      text-decoration: line-through;
      color: #a09888;
      margin-left: 10px;
      font-size: 1.1rem;
    }
    .deal-timer {
      display: flex;
      gap: 10px;
      margin: 12px 0;
    }
    .deal-timer .time-block {
      background: #2d2d3a;
      padding: 6px 14px;
      border-radius: 16px;
      text-align: center;
      min-width: 60px;
    }
    .deal-timer .num {
      font-size: 1.6rem;
      font-weight: 700;
    }
    .deal-timer .label {
      font-size: 0.7rem;
      opacity: 0.7;
    }

    /* testimonials */
    .testi-scroll {
      display: flex;
      gap: 18px;
      overflow-x: auto;
      padding: 8px 4px 16px;
    }
    .testi-card {
      min-width: 260px;
      background: white;
      padding: 20px;
      border-radius: 24px;
      border: 1px solid #e6e0d6;
      flex-shrink: 0;
    }
    .testi-card .stars { color: #d4a14b; }
    .testi-card blockquote {
      font-style: italic;
      margin: 8px 0;
      color: #2d2d3a;
    }
    .testi-card .author {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 10px;
    }
    .testi-card .avatar {
      width: 40px;
      height: 40px;
      background: #d6cdc0;
      border-radius: 50%;
    }

    /* newsletter */
    .newsletter {
      background: #eae3da;
      border-radius: 60px;
      padding: 28px 32px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
    }
    .newsletter .text h3 {
      font-size: 1.4rem;
    }
    .newsletter form {
      display: flex;
      flex-wrap: wrap;
      gap: 8px;
    }
    .newsletter input {
      border: none;
      padding: 12px 20px;
      border-radius: 60px;
      min-width: 200px;
      font-size: 0.95rem;
      background: white;
      border: 1px solid #d6d0c6;
    }
    .newsletter input:focus {
      outline: 2px solid #c35a3a;
    }
    .newsletter .btn {
      background: #1e1e2a;
      color: white;
    }

    /* footer */
    .footer {
      margin: 40px 0 20px;
      padding-top: 20px;
      border-top: 1px solid #d6d0c6;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 20px;
    }
    .footer ul {
      list-style: none;
      display: flex;
      gap: 18px;
      flex-wrap: wrap;
    }
    .footer a {
      text-decoration: none;
      color: #3d3d4a;
    }
    .footer a:hover { color: #c35a3a; }

    /* responsive */
    @media (max-width: 640px) {
      .header { flex-direction: column; align-items: stretch; }
      .nav { justify-content: center; }
      .search-wrap input { min-width: 100px; }
      .prod-grid { grid-template-columns: repeat(2, 1fr); }
    }
  </style>
</head>
<body>

<div class="container">

  <!-- header -->
  <header class="header">
    <div class="brand">
      <i class="fas fa-store-alt"></i> Nexus<span>Shop</span>
    </div>
    <nav class="nav">
      <a href="#">Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">Products</a>
      <a href="#deals">Deals</a>
    </nav>
    <div class="header-actions">
      <div class="search-wrap">
        <input type="text" id="searchInput" placeholder="Search...">
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <button><i class="far fa-heart"></i></button>
      <button id="cartBtn"><i class="fas fa-shopping-bag"></i> <span class="cart-badge" id="cartCount">0</span></button>
    </div>
  </header>

  <!-- hero -->
  <section class="hero">
    <div class="hero-text">
      <h1>Discover premium <br>essentials</h1>
      <p>Curated style, tech & accessories — free shipping on first order.</p>
      <div class="btn-group">
        <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-arrow-right"></i> Shop now</button>
        <button class="btn btn-outline" id="dealsBtn">Explore deals</button>
      </div>
    </div>
    <div class="hero-img">
      <i class="fas fa-box-open"></i>
    </div>
  </section>

  <!-- categories -->
  <section id="categories" class="section">
    <div class="section-title">
      <span>📂 Categories</span>
      <a href="#">All →</a>
    </div>
    <div class="cat-grid" id="categoriesGrid"></div>
  </section>

  <!-- products -->
  <section id="products" class="section">
    <div class="section-title">
      <span>🔥 Trending now</span>
      <a href="#">View all →</a>
    </div>
    <div class="prod-grid" id="productsGrid"></div>
  </section>

  <!-- deal -->
  <section id="deals" class="section">
    <div class="deal-box">
      <div class="info">
        <span style="background:#c35a3a; padding:2px 14px; border-radius:40px; font-size:0.8rem; font-weight:600;">⚡ flash deal</span>
        <h3>MacBook Air M2</h3>
        <p class="big-price">$999 <span class="old-price">$1,199</span></p>
        <p style="color:#b0a898;">Only 12 left — hurry!</p>
        <div class="deal-timer" id="dealTimer">
          <div class="time-block"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
          <div class="time-block"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
          <div class="time-block"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
          <div class="time-block"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
        </div>
        <button class="btn btn-primary" id="buyDealBtn" style="margin-top:8px;"><i class="fas fa-cart-plus"></i> Add to cart</button>
      </div>
      <div style="font-size:4rem; opacity:0.3; background:#2d2d3a; padding:8px 30px; border-radius:50px;"><i class="fas fa-laptop"></i></div>
    </div>
  </section>

  <!-- testimonials -->
  <section class="section">
    <div class="section-title">
      <span>⭐ Customer reviews</span>
    </div>
    <div class="testi-scroll" id="testimonialsList"></div>
  </section>

  <!-- newsletter -->
  <section class="newsletter" id="newsletter">
    <div class="text">
      <h3>📬 Stay in the loop</h3>
      <p style="color:#3d3d4a;">Exclusive offers & new arrivals</p>
    </div>
    <form id="newsletterForm" onsubmit="return false;">
      <input type="email" id="newsletterEmail" placeholder="Your email" required>
      <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
      <div id="newsletterMsg" style="width:100%; font-size:0.9rem; margin-top:6px;"></div>
    </form>
  </section>

  <!-- footer -->
  <footer class="footer">
    <div>
      <strong>NexusShop</strong> © <span id="year"></span> — simple demo
    </div>
    <ul>
      <li><a href="#">About</a></li>
      <li><a href="#">Help</a></li>
      <li><a href="#">Privacy</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </footer>
</div>

<script>
  (function() {
    // ---------- DATA ----------
    const categories = [
      { name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
      { name: 'Laptops', icon: 'fa-laptop', count: 18 },
      { name: 'Clothing', icon: 'fa-tshirt', count: 42 },
      { name: 'Gadgets', icon: 'fa-headphones', count: 31 },
      { name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
      { name: 'Accessories', icon: 'fa-watch', count: 39 },
    ];

    const products = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, old: 1199, rating: 5, reviews: 128, icon: 'fa-mobile-alt' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, old: null, rating: 4, reviews: 86, icon: 'fa-laptop' },
      { id: 3, title: 'Apple Watch Series 8', price: 349, old: 399, rating: 5, reviews: 214, icon: 'fa-clock' },
      { id: 4, title: 'Nike Air Max 270', price: 150, old: null, rating: 4, reviews: 53, icon: 'fa-shoe-prints' },
      { id: 5, title: 'Sony A7 IV', price: 2499, old: null, rating: 5, reviews: 42, icon: 'fa-camera' },
      { id: 6, title: 'Chanel No.5', price: 120, old: null, rating: 5, reviews: 189, icon: 'fa-spray-can' },
      { id: 7, title: 'Travel Backpack', price: 79, old: 99, rating: 4, reviews: 67, icon: 'fa-backpack' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, old: null, rating: 5, reviews: 156, icon: 'fa-headphones' },
    ];

    const testimonials = [
      { name: 'Ava M.', role: 'Verified', text: 'Fast shipping, excellent support!', stars: 5 },
      { name: 'Michael L.', role: 'Shopper', text: 'Great selection and smooth checkout.', stars: 4 },
      { name: 'Sophia C.', role: 'Designer', text: 'Love the quality, everything perfect.', stars: 5 },
      { name: 'James W.', role: 'Tech fan', text: 'Amazing prices on electronics.', stars: 5 },
    ];

    // ---------- STATE ----------
    let cartCount = 0;

    // ---------- DOM refs ----------
    const catGrid = document.getElementById('categoriesGrid');
    const prodGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');
    const testimonialsList = document.getElementById('testimonialsList');
    const newsletterEmail = document.getElementById('newsletterEmail');
    const newsletterMsg = document.getElementById('newsletterMsg');

    // ---------- helpers ----------
    function renderCategories() {
      catGrid.innerHTML = categories.map(c => `
        <div class="cat-item" data-cat="${c.name}">
          <i class="fas ${c.icon}"></i>
          <h4>${c.name}</h4>
          <small>${c.count} items</small>
        </div>
      `).join('');
      // click -> filter
      catGrid.querySelectorAll('.cat-item').forEach(el => {
        el.addEventListener('click', () => {
          const name = el.dataset.cat;
          searchInput.value = name;
          filterProducts(name);
          document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
        });
      });
    }

    function renderProducts(list) {
      prodGrid.innerHTML = list.map(p => `
        <div class="prod-card">
          <div class="img-box"><i class="fas ${p.icon}"></i></div>
          <div class="title">${p.title}</div>
          <div class="price">$${p.price}${p.old ? `<span class="old">$${p.old}</span>` : ''}</div>
          <div class="rating">${'★'.repeat(Math.round(p.rating))}${'☆'.repeat(5 - Math.round(p.rating))} <span style="color:#6a6a7a;font-size:0.75rem;">(${p.reviews})</span></div>
          <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
        </div>
      `).join('');

      prodGrid.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          const id = parseInt(this.dataset.id);
          addToCart(id, this);
        });
      });
    }

    function filterProducts(query) {
      const q = String(query || '').trim().toLowerCase();
      if (!q) return renderProducts(products);
      const filtered = products.filter(p => 
        p.title.toLowerCase().includes(q) || 
        (p.category && p.category.toLowerCase().includes(q))
      );
      renderProducts(filtered);
    }

    function addToCart(productId, btn) {
      cartCount++;
      cartCountEl.textContent = cartCount;
      if (btn) {
        const orig = btn.innerHTML;
        btn.innerHTML = '✅ Added';
        btn.style.background = '#2a9d8f';
        setTimeout(() => {
          btn.innerHTML = orig;
          btn.style.background = '#1e1e2a';
        }, 1200);
      }
    }

    function renderTestimonials() {
      testimonialsList.innerHTML = testimonials.map(t => `
        <div class="testi-card">
          <div class="stars">${'★'.repeat(t.stars)}${'☆'.repeat(5 - t.stars)}</div>
          <blockquote>“${t.text}”</blockquote>
          <div class="author">
            <div class="avatar" style="display:flex;align-items:center;justify-content:center;background:#d6cdc0;font-weight:600;">${t.name[0]}</div>
            <div><strong>${t.name}</strong> <span style="color:#6a6a7a;font-size:0.85rem;">${t.role}</span></div>
          </div>
        </div>
      `).join('');
    }

    // deal timer
    function startTimer() {
      const target = new Date();
      target.setHours(target.getHours() + 24 + 2); // 26h from now
      function tick() {
        const diff = target - new Date();
        if (diff <= 0) {
          document.getElementById('dealDays').textContent = '0';
          document.getElementById('dealHours').textContent = '00';
          document.getElementById('dealMinutes').textContent = '00';
          document.getElementById('dealSeconds').textContent = '00';
          return;
        }
        const days = Math.floor(diff / (24*3600*1000));
        const hours = Math.floor((diff % (24*3600*1000)) / (3600*1000));
        const mins = Math.floor((diff % (3600*1000)) / (60*1000));
        const secs = Math.floor((diff % (60*1000)) / 1000);
        document.getElementById('dealDays').textContent = days;
        document.getElementById('dealHours').textContent = String(hours).padStart(2,'0');
        document.getElementById('dealMinutes').textContent = String(mins).padStart(2,'0');
        document.getElementById('dealSeconds').textContent = String(secs).padStart(2,'0');
      }
      tick();
      setInterval(tick, 1000);
    }

    // ---------- events ----------
    // search
    searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

    // hero buttons
    document.getElementById('shopNowBtn').addEventListener('click', () => {
      document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('dealsBtn').addEventListener('click', () => {
      document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
    });

    // deal buy
    document.getElementById('buyDealBtn').addEventListener('click', function() {
      cartCount++;
      cartCountEl.textContent = cartCount;
      const orig = this.innerHTML;
      this.innerHTML = '✅ Added!';
      this.style.background = '#2a9d8f';
      setTimeout(() => {
        this.innerHTML = orig;
        this.style.background = '#c35a3a';
      }, 1400);
    });

    // cart button
    document.getElementById('cartBtn').addEventListener('click', function() {
      alert(`🛒 Cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
    });

    // newsletter
    document.getElementById('newsletterForm').addEventListener('submit', function(e) {
      e.preventDefault();
      const email = newsletterEmail.value.trim();
      if (!email || !email.includes('@')) {
        newsletterMsg.textContent = '⚠️ Please enter a valid email.';
        newsletterMsg.style.color = '#b35a3a';
        return;
      }
      newsletterMsg.textContent = '🎉 Subscribed! Thanks.';
      newsletterMsg.style.color = '#1e7e5e';
      newsletterEmail.value = '';
      setTimeout(() => { newsletterMsg.textContent = ''; }, 3000);
    });

    // year
    document.getElementById('year').textContent = new Date().getFullYear();

    // ---------- init ----------
    renderCategories();
    renderProducts(products);
    renderTestimonials();
    startTimer();
    cartCountEl.textContent = '0';

    console.log('✨ NexusShop loaded (simplified)');
  })();
</script>
</body>
</html>
