# 📄 Creating a New Status Post

## Option 1: Using the Batch File (Windows) Recommended

**Double-click `new-post.bat`** in the root folder.

1. Enter your post title (or press Enter for no title)
2. The file is automatically created in `_posts/` with the current date & time
3. Notepad opens automatically - write your status!
4. Add images using Markdown: `![Alt Text](/assets/images/photo.jpg)`
5. Save and close - your post is ready!

## Option 2: Manual Creation

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