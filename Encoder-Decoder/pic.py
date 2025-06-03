from PIL import Image

# Load the four PNG images
image1 = Image.open("visualize\Transformer_ValLoss_Weather_96_96.png")
image2 = Image.open("visualize\Transformer_ValLoss_Weather_96_192.png")
image3 = Image.open("visualize\Transformer_ValLoss_Weather_96_336.png")
image4 = Image.open("visualize\Transformer_ValLoss_Weather_96_720.png")

# Ensure all images have the same size
width, height = image1.size
image2 = image2.resize((width, height))
image3 = image3.resize((width, height))
image4 = image4.resize((width, height))

# Create a new blank image for the 2x2 grid
grid_width = width * 2
grid_height = height * 2
grid_image = Image.new("RGBA", (grid_width, grid_height))

# Paste the images into the grid
grid_image.paste(image1, (0, 0))
grid_image.paste(image2, (width, 0))
grid_image.paste(image3, (0, height))
grid_image.paste(image4, (width, height))

# Save the resulting image
grid_image.show()
grid_image.save("./visualize/Transformer_Valloss_Weather.png")
# print("2x2 grid image saved as output_grid.png and displayed.")