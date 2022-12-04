# The Napari Assistant

The Napari Assistant is a plugin for napari that allows you setting up an image processing workflow.

This tutorial is also available as video [napari-assistant.mp4](napari-assistant.mp4).

Start napari from the command line like this:

```bash
conda activate devbio-napari-env

napari
```

![](napari-assistant01.jpg)

The napari window will open. Click on the menu `File > Open Samples Cells(3D+2Ch)` to open an example image.

![](napari-assistant02.jpg)

![](napari-assistant03.jpg)

You can explore this dataset by clicking on the `2D/3D` view button.

![](napari-assistant04.jpg)

Start the Napari Assistant from the `Tools > Utilities > Assistant (na)` menu.

![](napari-assistant05.jpg)

Within the `Assistant` panel, click on the `Remove noise` button.

![](napari-assistant06.jpg)

Click on the `Eye` buttons in the layer list to hide the original image and show the result of the `Remove noise` step only.

![](napari-assistant07.jpg)

Click on the `Binarize` button in the Assistant panel to add a new step to the workflow that generates a binary image from the current layer.

![](napari-assistant08.jpg)

Toggle 2D/3D view and layer visibility to explore the result of the `Binarize` step.

![](napari-assistant09.jpg)

After switching back to 2D view, click the `Label` button in the Assistant and choose the operation `Connected component labeling (clEsperanto)`.

![](napari-assistant11.jpg)

Select the `Result of gaussian_blur` layer in the layer list and modify its `sigma` parameters. You will note that the subsequent steps (Threshold Otsu and Connected Component Labeling) are also updated.

![](napari-assistant12.jpg)

Switch to grid view, show all layers using their `Eye` buttons and continue modifying the parameters.

![](napari-assistant13.jpg)

![](napari-assistant14.jpg)

Close all layers except `nuclei` and `membrane`.

![](napari-assistant15.jpg)

Turn of Gridview and click again on the `Label` button in the Assistant.

![](napari-assistant16.jpg)

This time, do not change the operation but the `spot_sigma` parameter instead.

![](napari-assistant17.jpg)

Toggle again to 3D view and inspect the result of this single step.

![](napari-assistant18.jpg)







