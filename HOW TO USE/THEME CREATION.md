# Quick Theme Tips

## Create a Custom Theme
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

## After Editing/Adding Your Theme Activate Using:

_includes > css-links.html > 

```
<link rel="stylesheet" href="{{ '/assets/themes/dark.css' | relative_url }}">
```

Edit the /assets/themes/new-theme.css line to your new theme.

---