# text-to-png
#### An application in the C language that creates a png file with a text message drawn in it. 
Using the ```./configure make``` command, all three libraries were installed (that is, files were created.so and .a). The operation of the application looks like this. 
At the beginning, libraries are initialized, the font is loaded from the .ttf file, and then working with symbols, including obtaining the symbol code, calculating the width, height, string parameters, filling the string with pixels and saving the image. After execution, the work with the libraries is completed. 
There is no additional loading of libraries in the static version of the program. In the dynamic version of the program, you need to download the libraries, specifying the path to the .so files, and load the necessary functions. After the main application code, all open libraries are closed. Elf-loader was used in the blob version of the program.
