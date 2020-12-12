#@ Integer(label="Median filter radius", min=0, value=5) medianRadius
#@ String(label="Threshold method", choices={"Otsu", "Moments", "Triangle"}) thresholdMethod
#@ Integer(label="Number of erosions", value=3) numErosions
#@ Integer(label="Number of dilations", value=0) numDilations
#@ Boolean(label="Watershed") watershed
#@ String(label="Particle size range", value="0-Infinity") pSizeRange
#@ String(label="Particle circularity range", value="0.0-1.0") pCircularityRange

setBatchMode(true);

image = getImageID();

// Work on an 8-bit copy of the image.
// HACK: Avoid duplicate bringing in multiple channels.
Stack.setDisplayMode("grayscale");
run("Duplicate...", " ");
imageSlice = getImageID();
run("8-bit");

// Median filter.
if (medianRadius > 0) {
	run("Median...", "radius=" + medianRadius);
}

// Threshold.
setAutoThreshold(thresholdMethod + " dark");

// Mask preprocessing.
run("Create Mask");
mask = getImageID();
setOption("BlackBackground", true);
for (i=0; i<numErosions; i++) {
	run("Erode");
}
for (i=0; i<numDilations; i++) {
	run("Dilate");
}
if (watershed) {
	run("Watershed");
}

// Split mask into particles.
run("Set Measurements...", "area mean standard min centroid center median redirect=None decimal=3");
run("Analyze Particles...", "exclude add");
selectWindow("confocal-series.tif");
run("ROI Manager...");
selectWindow("mask");
run("Analyze Particles...", "size=" + pSizeRange + " circularity=" + pCircularityRange + " exclude add");

// Close temporary images.
selectImage(mask);
close();
selectImage(imageSlice);
close();
selectImage(image);

// Measure.
roiManager("Show None");
roiManager("Show All");
roiManager("Measure");
