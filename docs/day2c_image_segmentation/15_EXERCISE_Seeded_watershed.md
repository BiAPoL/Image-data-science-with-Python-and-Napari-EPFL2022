# Exercise: Seeded watershed in Napari

Start Napari and open the example image `File > Open Samples > Napari > Cells (3D+2Ch)`.

![img_8.png](img_8.png)

Use the menu `Tools > Segmentation / labeling > Voronoi Otsu Labeling` to segment the nuclei.

![img_9.png](img_9.png)

Use the menu `Tools > Segmentation / labeling > Seeded Watershed (scikit-image, nsbatwm)` to segment the cells.

![img_10.png](img_10.png)

Start `Smooth labels (clesperanto)` from the menu `Tools > Segmentation post-processing`. 
Hide all layers except the final cell segmentation. Change the `contour` of the cell segmentation layer to show the outlines of the segmented cells above the membrane channel.

![img_11.png](img_11.png)

Vary the radius and see how the outlines change.

![img_12.png](img_12.png)

## Question

What is a good radius for segmenting cells in this image properly?