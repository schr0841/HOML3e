from tkinter import *
from PIL import ImageTk, Image
import os
root = Tk()
root.title("Image Viewer")
root.state('zoomed')  # Maximizes the window
screen_width = root.winfo_screenwidth()
screen_height = root.winfo_screenheight()
# Collect only file names (instead of opening all images at once)
image_files = [
    file for file in os.listdir('folder_path_here')
    if file.lower().endswith(('.png', '.jpg', '.jpeg', '.gif'))
]
# Use list_images to track the same set of images as image_files,
# so forward/back logic stays the same
list_images = image_files
current_image = 0
grid_view = False   
zoom_level = 1.0
def resize_image(image, max_width, max_height):
    width, height = image.size
    scale = min(max_width / width, max_height / height)
    new_width = int(width * scale)
    new_height = int(height * scale)
    return image.resize((new_width, new_height))
def back():
    global current_image
    if grid_view:
        current_image -= 4
        if current_image < 0:
            current_image = 0
    else:
        current_image -= 1
        if current_image < 0:
            current_image = len(list_images) - 1
    update_image()
def forward():
    global current_image
    if grid_view:
        current_image += 4
        if current_image >= len(list_images):
            current_image = 0
    else:
        current_image += 1
        if current_image >= len(list_images):
            current_image = 0
    update_image()
def toggle_grid_view():
    global grid_view
    grid_view = not grid_view
    update_image()
def zoom_in():
    global zoom_level
    zoom_level += 0.1
    update_image()
def zoom_out():
    global zoom_level
    if zoom_level > 0.1:
        zoom_level -= 0.1
    update_image()
def update_image():
    # Open the current image on demand
    img = Image.open(os.path.join('folder_path_here', image_files[current_image]))
    if not grid_view:  # Single-view mode
        resized_img = resize_image(img, int(screen_width * zoom_level), 
                                   int((screen_height - 50) * zoom_level))
    else:  # "Grid" view - still loads a single image for demonstration
        grid_size = int(screen_width * zoom_level / 2)
        resized_img = img.resize((grid_size, grid_size))
    img_tk = ImageTk.PhotoImage(resized_img)
    label.config(image=img_tk)
    label.image = img_tk  # Keep a reference to avoid garbage collection
# Create a label for the image
label = Label(root)
label.grid(row=0, column=0)
# Create a frame for the buttons
button_frame = Frame(root)
button_frame.place(x=0, y=screen_height - 20, anchor=SW)
# Buttons
button_zoom_out = Button(button_frame, text="-", command=zoom_out, width=3, height=1)
button_zoom_in = Button(button_frame, text="+", command=zoom_in, width=3, height=1)
button_grid = Button(button_frame, text="Grid", command=toggle_grid_view, width=5, height=1)
button_back = Button(button_frame, text="Back", command=back)
button_exit = Button(button_frame, text="Exit", command=root.quit)
button_forward = Button(button_frame, text="Forward", command=forward)
button_zoom_out.pack(side=LEFT)
button_zoom_in.pack(side=LEFT)
button_grid.pack(side=LEFT)
button_back.pack(side=LEFT)
button_exit.pack(side=LEFT)
button_forward.pack(side=LEFT)
# Show the first image on startup
update_image()
root.mainloop()