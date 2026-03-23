# 📱 Social Media Share Images

When you share a post on Facebook, Pinterest, Twitter, or LinkedIn, those platforms will now display a **preview image** instead of your avatar.

## How It Works

The theme uses **Open Graph meta tags** to tell social media platforms which image to display when a link is shared.

## Setup Steps

### 1. Create a Default Share Image

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

### 2. Optional: Custom Image Per Post

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