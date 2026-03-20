![screenshot](https://github.com/breakthebull/status/blob/main/screenshot.PNG) 
![screenshot](https://github.com/breakthebull/status/blob/main/Capture.PNG)
---

# 📝 Status Wall - A Microblog Jekyll Theme

A simple, clean, Facebook-style status wall built with Jekyll. Perfect for sharing quick updates, snippets, and thoughts without the complexity of a traditional blog.

![Preview](https://img.shields.io/badge/Jekyll-4.x-red?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-blue?style=flat-square)
![Featured](https://img.shields.io/badge/featured%20on-JT-red.svg)

---

## ✨ Features

- 📱 **Responsive Design** - Looks great on mobile and desktop
- 🖼️ **Image Support** - Add photos to your status updates
- 🔗 **Share Buttons** - Facebook, Pinterest, and Copy Link
- ⚡ **Fast & Lightweight** - No database, just static HTML
- 🕐 **Auto Timestamps** - Posts include exact posting time
- 🎨 **Easy Customization** - Change colors, profile info, and more
- 📁 **Flat File Structure** - Easy FTP upload (no nested folders)

---

## 🚀 Quick Start

### 1. Install Requirements

Make sure you have **Ruby** and **Jekyll** installed:

```bash
# Check Ruby installation
ruby -v

# Install Jekyll and Bundler
gem install jekyll bundler
```

### 2. Clone & Setup

```bash
# Clone the repository
git clone https://github.com/yourusername/status-wall.git
cd status-wall

# Install dependencies
bundle install
```

### 3. Run Locally

```bash
# Start the development server
bundle exec jekyll serve
```

Visit `http://127.0.0.1:4000/` in your browser.

---

## 📄 Creating a New Status Post

### Option 1: Using the Batch File (Windows) ⭐ Recommended

**Double-click `new-post.bat`** in the root folder.

1. Enter your post title (or press Enter for no title)
2. The file is automatically created in `_posts/` with the current date & time
3. Notepad opens automatically - write your status!
4. Add images using Markdown: `![Alt Text](/assets/images/photo.jpg)`
5. Save and close - your post is ready!

### Option 2: Manual Creation

1. Create a new file in the `_posts/` folder
2. Name it: `YYYY-MM-DD-your-title.md`
3. Add front matter:

```markdown
---
layout: post
title: "Your Status Title"
date: 2024-01-15 14:30:00 -0500
---

Write your status update here...
```

> **Note:** Adjust the timezone offset (`-0500`) to match your location.

---

## 🖼️ Adding Images to Posts

### 1. Add Your Image

Place images in the `assets/images/` folder:

```
assets/
└── images/
    ├── photo1.jpg
    └── screenshot.png
```

### 2. Reference in Your Post

Use standard Markdown image syntax:

```markdown
---
layout: post
title: "Check this out!"
date: 2024-01-15 14:30:00 -0500
---
Just finished this project!

![Project Screenshot](/assets/images/screenshot.png)

#proud #completed
```

### Image Tips

| Tip | Recommendation |
|-----|----------------|
| **Max Width** | 1200px (larger images are automatically resized) |
| **Format** | `.jpg` for photos, `.png` for screenshots |
| **Compression** | Use [TinyPNG](https://tinypng.com/) to reduce file size |
| **Multiple Images** | Add as many as you want - each on its own line |

---

## 📱 Social Media Share Images

When you share a post on Facebook, Pinterest, Twitter, or LinkedIn, those platforms will now display a **preview image** instead of your avatar.

### How It Works

The theme uses **Open Graph meta tags** to tell social media platforms which image to display when a link is shared.

### Setup Steps

#### 1. Create a Default Share Image

Create a default image that will be used for all posts:

```
assets/
└── images/
    └── share-default.jpg    ← Create this file
```

**Recommended Size:** 1200 x 630 pixels

**Tips:**
- Use a branded image with your site name or logo
- Keep text minimal and readable at small sizes
- Use high contrast for better visibility

#### 2. Optional: Custom Image Per Post

You can specify a different share image for individual posts by adding an `image` field in the front matter:

```markdown
---
layout: post
title: "My Status Update"
date: 2024-01-15 14:30:00 -0500
image: /assets/images/custom-share.jpg
---
Your post content here...
```

| Scenario | Image Used |
|----------|------------|
| Post has `image:` field | Custom image specified |
| Post has no `image:` field | `share-default.jpg` |

### Recommended Image Sizes

| Platform | Size | Notes |
|----------|------|-------|
| **Facebook** | 1200 x 630 px | Landscape works best |
| **Twitter** | 1200 x 630 px | Summary large image card |
| **Pinterest** | 1000 x 1500 px | Vertical pins perform better |
| **LinkedIn** | 1200 x 627 px | Similar to Facebook |

**Universal Recommendation:** Create your `share-default.jpg` at **1200 x 630 pixels** for best compatibility across all platforms.

### Test Your Share Preview

After rebuilding and uploading your site, use these tools to verify how your links appear when shared:

| Platform | Testing Tool |
|----------|--------------|
| **Facebook** | [Sharing Debugger](https://developers.facebook.com/tools/debug/) |
| **Twitter** | [Card Validator](https://cards-dev.twitter.com/validator) |
| **Pinterest** | [Pin Builder](https://developers.pinterest.com/tools/url-debugger/) |
| **LinkedIn** | [Post Inspector](https://www.linkedin.com/post-inspector/) |

> **⚠️ Important:** These tools **cache images**. If you update your share image, you must click **"Scrape Again"** or **"Clear Cache"** to see the changes.

### Troubleshooting

| Issue | Solution |
|-------|----------|
| **Avatar still shows** | Clear platform cache using debugger tools |
| **No image shows** | Ensure `share-default.jpg` exists in `assets/images/` |
| **Image looks cropped** | Use recommended 1200x630 size |
| **Wrong image on old posts** | Rebuild site and clear platform cache |

### Example Workflow

```bash
# 1. Create your default share image
# Save as: assets/images/share-default.jpg (1200x630px)

# 2. Rebuild your site
bundle exec jekyll build

# 3. Upload to your host
# - Upload all .html files
# - Upload assets/images/ folder with new image

# 4. Test with Facebook Debugger
# - Enter your post URL
# - Click "Scrape Again"
# - Verify the correct image appears
```
---

## 🖼️ Featured Images (Left Sidebar)

Display clickable promotional images, book covers, or favorite photos in the left sidebar on desktop screens.

### How to Add Featured Images

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

### Configuration Options

| Field | Description | Example |
|-------|-------------|---------|
| `image` | Path to your image file | `/assets/images/featured/photo.jpg` |
| `link` | URL when image is clicked | `https://yourwebsite.com` |
| `alt` | Caption text displayed below image | "Check out my latest work!" |

### Tips for Best Results

| Tip | Recommendation |
|-----|----------------|
| **Image Size** | 250px wide × 300-400px tall (fits sidebar perfectly) |
| **Format** | `.jpg` for photos, `.png` for graphics with text |
| **Compression** | Use [TinyPNG](https://tinypng.com/) to reduce file size |
| **Number of Images** | No limit, but 3-5 works best for readability |

### How to Remove or Update

- **Remove:** Delete the entry from `_data/featured-images.yml`
- **Replace:** Update the `image:` path to point to a new file
- **Change Link:** Edit the `link:` URL
- **Update Caption:** Modify the `alt:` text

---

## 📌 Pinned Posts (Right Sidebar)

Highlight important announcements, welcome messages, or key content in the right sidebar on desktop screens.

### How to Pin a Post

1. **Create or Edit a Post**
   
   Open any post in `_posts/` and add `pin: true` to the front matter:
   ```markdown
   ---
   layout: post
   title: "Welcome to My Status Wall"
   date: 2024-01-15 12:00:00 -0500
   pin: true
   ---
   This post will appear in the right sidebar!
   ```

2. **Using the Batch File (Windows)**
   
   When you run `new-post.bat`, answer `y` when asked:
   ```
   Pin this post to sidebar? (y/n): y
   ```

3. **Rebuild & Upload**
   ```bash
   bundle exec jekyll build
   ```
   Upload the updated `_site/` contents to your host.

### How Many Posts Show?

- **Default:** Up to 5 pinned posts display in the sidebar
- **Order:** Newest pinned posts appear first
- **Too Many?** Only the 5 most recent pinned posts show automatically

### How to Unpin a Post

Simply remove or change the `pin:` field in the post's front matter:

```markdown
---
layout: post
title: "No Longer Pinned"
date: 2024-01-15 12:00:00 -0500
pin: false    # ← Change to false or remove this line entirely
---
```

### Best Uses for Pinned Posts

| Use Case | Example |
|----------|---------|
| **Welcome Message** | Introduce yourself to new visitors |
| **Important Announcement** | Site updates, news, or changes |
| **Popular Content** | Link to your most popular post |
| **Contact Info** | How people can reach you |
| **Current Project** | What you're working on right now |

---

## 📱 Responsive Behavior

| Screen Width | Featured Images | Pinned Posts |
|--------------|-----------------|--------------|
| **1200px and above** | ✅ Visible (left sidebar) | ✅ Visible (right sidebar) |
| **Below 1200px** | ❌ Hidden | ❌ Hidden |

On tablets and mobile devices, the sidebars automatically hide to keep the focus on your main feed. This ensures a clean, readable experience on smaller screens.

---

## 🛠️ Troubleshooting

| Issue | Solution |
|-------|----------|
| **Featured images not showing** | Check `_data/featured-images.yml` exists and has correct indentation |
| **Images appear broken** | Verify image path is correct (starts with `/assets/images/featured/`) |
| **Pinned posts not appearing** | Ensure `pin: true` is in the post front matter (not quoted) |
| **Sidebars show at top of page** | Hard refresh your browser (`Ctrl + Shift + R`) |
| **Cards look transparent** | Rebuild site and re-upload `_site/` folder |
| **Only 5 pinned posts show** | This is intentional! Remove old pins to make room for new ones |

---

## 📋 Quick Reference

### Add Featured Image
```yaml
# _data/featured-images.yml
- image: /assets/images/featured/new-image.jpg
  link: https://yourlink.com
  alt: "Description here"
```

### Pin a Post
```markdown
# _posts/2024-01-15-your-post.md
---
layout: post
title: "Your Title"
date: 2024-01-15 12:00:00 -0500
pin: true
---
```

### Using Batch File
```
Double-click new-post.bat
→ Enter title
→ Enter mood (optional)
→ Pin this post? Type: y
```

---

### How to Use Moods

Add a `mood` field to your post front matter:

```markdown
---
layout: post
title: "Morning Coffee"
date: 2024-01-15 08:30:00 -0500
mood: calm
---
```

### Available Moods

| Mood | Color | Description |
|------|-------|-------------|
| `calm` | 🩵 Light Blue | Peaceful, relaxed |
| `happy` | 🟡 Gold | Joyful, positive |
| `excited` | 🔴 Red | Energetic, thrilling |
| `thoughtful` | 🟣 Purple | Reflective, deep |
| `tired` | ⚪ Gray | Exhausted, low energy |
| `creative` | 🟢 Green | Artistic, building |
| `focused` | 🔵 Blue | Working, concentrating |

---

### Animations

Posts automatically fade in when the page loads. Hover over cards for a subtle lift effect.

---

## 🌐 Deploying to Your Host

### Method 1: Jekyll Build (Recommended) ⭐

This method includes all your templates, styling, and layout automatically.

```bash
# Generate static files
bundle exec jekyll build
```

**Upload these files to your host:**

| File/Folder | Upload Location |
|-------------|-----------------|
| `index.html` | Root folder |
| `*.html` (all post files) | Root folder |
| `assets/` contents | `assets/` folder on host |

**Advantages:**
- ✅ All styling and layout included
- ✅ Share buttons work correctly
- ✅ Profile header on every page
- ✅ No manual HTML editing needed

---

### Method 2: Pandoc Convert (Alternative)

If you prefer to convert individual posts to HTML without running a full Jekyll build, you can use **Pandoc**.

#### Install Pandoc

**Windows:** Download from [pandoc.org](https://pandoc.org/installing.html)

**Verify installation:**
```bash
pandoc --version
```

#### Convert a Post to HTML

```bash
pandoc _posts/2024-01-15-my-post.md -o my-post.html --standalone
```

#### Add Your Template Header/Footer

Since Pandoc doesn't include your Jekyll layout, you'll need to manually add the header and footer to each converted HTML file, or create a Pandoc template.

**Basic Pandoc Template (`template.html`):**

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>$title$</title>
    <link rel="stylesheet" href="/assets/main.css">
</head>
<body>
    <div class="container">
        <header class="profile-header">
            <!-- Your header content -->
        </header>
        <main class="feed">
            $body$
        </main>
    </div>
</body>
</html>
```

**Convert with template:**
```bash
pandoc _posts/my-post.md -o my-post.html --template=template.html
```

#### Pandoc Method Comparison

| Method | Pros | Cons |
|--------|------|------|
| **Jekyll Build** | Full layout, automatic, consistent | Requires Ruby/Jekyll |
| **Pandoc** | No Ruby needed, quick single files | Manual template management, no auto feed |

> **Recommendation:** Use **Jekyll Build** for the full site. Use **Pandoc** only for quick individual post testing.

---

## 🎨 Customization

### Profile Information

Edit `_config.yml` to update your profile:

```yaml
title: "My Status Wall"
description: "Quick updates and snippets."
url: "https://status.yourdomain.com"

author:
  name: "Your Name"
  bio: "Posting snippets and status updates."
  avatar: "/assets/avatar.jpg"
```

### Colors & Styling

Edit `_sass/main.scss` to change colors:

```scss
$primary-color: #333;      /* Text color */
$accent-color: #007bff;    /* Link color */
$bg-color: #f0f2f5;        /* Background color */
$card-bg: #ffffff;         /* Card background */
```

### Timezone

Update your timezone in `new-post.bat`:

```batch
set "fullDate=%YYYY%-%MM%-%DD% %HH%:%Min%:%Sec% -0500"
                                                      ^
                                              Change this to your timezone
```

**Common Timezone Offsets:**

| Timezone | Offset |
|----------|--------|
| Eastern (EST) | `-0500` |
| Central (CST) | `-0600` |
| Mountain (MST) | `-0700` |
| Pacific (PST) | `-0800` |
| UK (GMT) | `+0000` |
| Central Europe | `+0100` |

### Permalink Structure

The theme uses **flat permalinks** for easy FTP uploading:

```yaml
# In _config.yml
permalink: /:title.html
```

This creates files like `my-post.html` instead of nested folders like `/2024/01/15/my-post/index.html`.

### Share Buttons

Edit `_layouts/post.html` and `index.html` to change share options:

```html
<!-- Facebook -->
<a href="https://www.facebook.com/sharer/sharer.php?u={{ site.url }}{{ post.url }}" class="share-btn">
    <i class="fab fa-facebook-f"></i> Share
</a>

<!-- Pinterest -->
<a href="https://pinterest.com/pin/create/button/?url={{ site.url }}{{ post.url }}" class="share-btn">
    <i class="fab fa-pinterest"></i> Pin
</a>
```

---

## 📁 Project Structure

```
status-wall/
├── _config.yml           # Site configuration
├── _layouts/
│   ├── default.html      # Main layout with header
│   └── post.html         # Individual post layout
├── _posts/               # Your status updates (.md files)
├── _sass/
│   └── main.scss         # Styles and colors
├── assets/
│   ├── images/           # Post images
│   └── main.scss         # Compiled CSS
├── _site/                # Generated site (after build)
├── index.html            # Home page feed
├── new-post.bat          # Quick post generator
├── template.html         # Optional Pandoc template
└── README.md             # This file
```

---

## 🛠️ Troubleshooting

| Issue | Solution |
|-------|----------|
| **Site shows 12:00 AM** | Add time in front matter `date: 2024-01-15 14:30:00 -0500` |
| **Images not showing** | Use root-relative paths `/assets/images/photo.jpg` |
| **Posts not sorting** | Ensure filenames follow `YYYY-MM-DD-title.md` format |
| **Build errors** | Run `bundle install` to update dependencies |
| **404 on post links** | Upload all `.html` files from `_site/` folder |
| **Can't upload folders** | Use flat permalinks (`/:title.html`) |

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

## 🤝 Contributing

Feel free to fork this project and customize it for your own needs! If you make improvements, consider submitting a pull request.

---

## 💡 Tips for Best Results

1. **Keep posts short** - This is a status wall, not a blog
2. **Compress images** - Faster loading = better experience
3. **Post consistently** - Your feed looks best with regular updates
4. **Test locally first** - Always run `jekyll serve` before deploying
5. **Use Jekyll Build** - For full site deployment with all styling
6. **Flat permalinks** - Makes FTP uploading much easier

---

## 🔗 Helpful Resources

| Resource | Link |
|----------|------|
| Jekyll Documentation | https://jekyllrb.com/docs/ |
| Pandoc Documentation | https://pandoc.org/ |
| Image Compression | https://tinypng.com/ |
| FontAwesome Icons | https://fontawesome.com/ |
| Timezone Lookup | https://www.timeanddate.com/time/zones/ |

---

**Made with ❤️ using Jekyll**

*Questions or issues? Open an issue on GitHub!*
