# 📌 Pinned Posts (Right Sidebar)

Highlight important announcements, welcome messages, or key content in the right sidebar on desktop screens.

## How to Pin a Post

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

   **Option 1: The Long Way**
   ```bash
   bundle exec jekyll build
   ```
   Upload the updated `_site/` contents to your host.

   **Option 2: The Quick Way** (if hosting your own site)
   Click the [build.bat](https://github.com/breakthebull/status/blob/main/build.bat)
   Click the [upload.bat](https://github.com/breakthebull/status/blob/main/upload.bat)

   **Option 3: The Fastest Way** (if hosting your own site)
   Click the [deploy.bat](https://github.com/breakthebull/status/blob/main/deploy.bat)

## How Many Posts Show?

- **Default:** Up to 5 pinned posts display in the sidebar
- **Order:** Newest pinned posts appear first
- **Too Many?** Only the 5 most recent pinned posts show automatically

## How to Unpin a Post

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
