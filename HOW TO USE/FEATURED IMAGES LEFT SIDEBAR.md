# Featured Images (Left Sidebar)

Display clickable promotional images, book covers, or favorite photos in the left sidebar on desktop screens.

## How to Add Featured Images

1. **Add Your Image**
   
   Place your image in the `assets/images/featured/` folder:
   ```
   assets/
   └── images/
       └── featured/
           ├── book-cover.jpg
           ├── promo-banner.png
           └── portfolio-photo.jpg
   ```

2. **Edit the Configuration File**
   
   Open `_data/featured-images.yml` and add an entry:
   ```yaml
   - image: /assets/images/featured/book-cover.jpg
     link: https://amazon.com/yourbook
     alt: "My New Book - Available Now!"
   
   - image: /assets/images/featured/promo-banner.png
     link: https://yourwebsite.com/promo
     alt: "Special Promotion"
   ```

3. **Rebuild & Upload**
   ```bash
   bundle exec jekyll build
   ```
   Upload the updated `_site/` contents to your host.

## Configuration Options

| Field | Description | Example |
|-------|-------------|---------|
| `image` | Path to your image file | `/assets/images/featured/photo.jpg` |
| `link` | URL when image is clicked | `https://yourwebsite.com` |
| `alt` | Caption text displayed below image | "Check out my latest work!" |

---
