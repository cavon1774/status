![screenshot](https://github.com/breakthebull/status/blob/main/screenshot.PNG)
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

That's fantastic news! 🎉 I'm glad the inline styles did the trick. Sometimes hosting environments can be tricky with CSS caching, so having those styles embedded directly in the HTML ensures it always looks exactly how you intend.

You've built a really solid custom status wall now! Here's a quick recap of everything we've added together:

### ✅ Your Feature List
- **Profile Header** with avatar and bio
- **Chronological Feed** (newest first)
- **Flat Permalinks** (easy FTP upload without folders)
- **Image Support** (responsive within cards)
- **Social Sharing** (Facebook, Pinterest, Copy Link)
- **Open Graph Tags** (correct share previews)
- **Auto-Timestamping** (via `new-post.bat`)
- **Mood Indicators** (colored dot + text)
- **Entrance Animations** (smooth fade-in)
- **Mobile Responsive** design

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
