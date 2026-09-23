import os
import re
import shutil
import logging

# Paths for Linux
posts_dir = os.path.expanduser("~/Projects/Learning-Blog/temp_posts")
attachments_dir = os.path.expanduser("~/ProgressDoc/ProgressDoc/attachments")

logging.basicConfig(filename="script_debug.log", level=logging.INFO)

# Process each markdown file in the posts directory
for filename in os.listdir(posts_dir):
    if not filename.endswith(".md"):
        continue

    file_dir = os.path.join(posts_dir, filename.replace(".md", ""))
    img_dir = os.path.join(file_dir, "img")
    os.makedirs(img_dir, exist_ok=True)

    filepath = os.path.join(file_dir, "index.md")
    os.rename(os.path.join(posts_dir, filename), filepath)

    with open(filepath, "r", encoding="utf-8") as file:
        content = file.read()

    # Find all image links in the format ![[image.png]]
    images = re.findall(r'!\[\[([^]]*\.(?:png|jpg|jpeg|gif|bmp|webp))\]\]', content)
    featured = [img for img in images if "feature" in img.lower()]

    for image in images:
        if image in featured:
            content = content.replace(f"![[{image}]]", "")
        else:
            new_image_name = image.replace(" ", "_")
            markdown_image = f"![Image Description](/img/{new_image_name})"
            content = content.replace(f"![[{image}]]", markdown_image)

            image_source = os.path.join(attachments_dir, image)
            if os.path.exists(image_source):
                shutil.copy(image_source, img_dir)
                os.rename(
                    os.path.join(img_dir, image),
                    os.path.join(img_dir, new_image_name),
                )
            else:
                logging.warning(f"Image not found: {image_source}")

    with open(filepath, "w", encoding="utf-8") as file:
        file.write(content)

    if len(featured) > 1:
        raise Exception(f"More than one feature image found: {featured}")
    elif len(featured) == 1:
        shutil.copy(os.path.join(attachments_dir, featured[0]), file_dir)

logging.info("Markdown files processed and images copied successfully.")
