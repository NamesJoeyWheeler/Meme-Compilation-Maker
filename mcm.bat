@echo Meme Compilation Maker (v1.0)
@echo Created By NamesJoeyWheeler
@echo .............................
for %%f in (./src/*.mp4) do echo file %%f >> ./src/list.txt; done 
cd src 
ffmpeg -loop 1 -i Background.png -f concat -safe 0 -i list.txt -filter_complex "[1:v]scale=720:-1[fg];[0:v][fg]overlay=(W-w)/2:(H-h)/2:shortest=1" output.mp4
del list.txt
@echo Meme Compilation Compiled!
@pause