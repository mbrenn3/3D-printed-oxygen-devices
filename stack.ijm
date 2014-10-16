dir2 = getDirectory("Choose Image Sequence Directory ");
dir1 = getDirectory("Choose Source Directory ");
open("ss.tif");
open("amb.tif");
open("exp.tif");
run("Concatenate...", "  title=[Concatenated Stacks] image1=ss.tif image2=amb.tif image3=exp.tif image4=[-- None --]");
run("Image Sequence... ", "format=TIFF name=exp start=0 digits=4 save=dir2");
input =dir2;
list= getFileList(dir2);
for (i = 0; i < list.length; i++)
action(input, list[i]);
function action(input, filename) {
open(input + filename);
makeRectangle(505, 238, 155, 171);
run("Measure");
close();
}
saveAs("Results", "Results.xls");
