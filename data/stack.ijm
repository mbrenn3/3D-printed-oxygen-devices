open("/media/6EE4-2E41/100314/sswell6.tif");
open("/media/6EE4-2E41/100314/ambwell6.tif");
open("/media/6EE4-2E41/100314/expwell6.tif");
run("Concatenate...", "  title=[Concatenated Stacks] image1=sswell6.tif image2=ambwell6.tif image3=expwell6.tif image4=[-- None --]");
run("Image Sequence... ", "format=TIFF name=exp start=0 digits=4 save=/media/6EE4-2E41/100314/well6/exp0000.tif");
input ="/media/6EE4-2E41/100314/well6/";
list= getFileList(input);
for (i = 0; i < list.length; i++)
action(input, list[i]);
function action(input, filename) {
open(input + filename);
makeRectangle(553, 259, 112, 207);
run("Measure");
close();
}
saveAs("Results", "/media/6EE4-2E41/100314/well6/Results.xls");
