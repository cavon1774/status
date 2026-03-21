![screenshot](https://github.com/breakthebull/status/blob/main/screenshot.PNG) 
![screenshot](https://github.com/breakthebull/status/blob/main/Capture.png)
![screenshot](https://github.com/breakthebull/status/blob/main/callout-styles.PNG)
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
git clone https://github.com/breakthebull/status-wall.git
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

---

# Using Callouts in Posts

```
---
layout: post
title: "Markdown Callouts"
date: 2026-03-21 01:14:47 -0500
mood: 
pin: true
---

{:.callout-note}
> **Note**
> This is a note callout.

{:.callout-tip}
> **Tip**
> This is a tip callout.

{:.callout-warning}
> **Warning**
> This is a warning callout.

{:.callout-danger}
> **Danger**
> This is a danger callout.

```
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

---

## 🎨 Quick Theme Tips

### Create a Custom Theme
1. Create `assets/themes/your-theme.css`
2. Add your colors:
   ```css
   :root {
     --bg-color: #yourbg;
     --card-bg: #yourcard;
     --text-color: #yourtext;
     --accent-color: #youraccent;
   }
   body { background: var(--bg-color); color: var(--text-color); }
   ```

---

### Timezone

Update your timezone in `new-post.bat`:

```batch
set "fullDate=%YYYY%-%MM%-%DD% %HH%:%Min%:%Sec% -0500"
                                                      ^
                                              Change this to your timezone
```

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

## 🤝 Contributing

Feel free to fork this project and customize it for your own needs! If you make improvements, consider submitting a pull request.

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
