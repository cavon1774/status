# Customization of _config.yml File

## Profile Information

Edit `_config.yml` to update your profile:

```yaml
title: "My Status Wall"
description: "Quick updates and snippets."
url: "https://yourdomain.com"

author:
  name: "Your Name"
  bio: "Posting snippets and status updates."
  avatar: "/assets/avatar.jpg"

theme_settings:
  theme_switcher: true #turns off auto when pinned posts is off
  pinned_posts: true
  featured_images: true
  mood_indicators: true

  # Additional settings
  default_theme: dark
  pinned_posts_limit: 5
  featured_images_limit: 2

moods:
  calm: "#87ceeb"        # Light blue
  happy: "#ffd700"       # Gold
  excited: "#ff6b6b"     # Red
  thoughtful: "#9b59b6"  # Purple
  tired: "#95a5a6"       # Gray
  creative: "#2ecc71"    # Green
  focused: "#3498db"     # Blue
  default: "#bdc3c7"     # Light gray fallback
```