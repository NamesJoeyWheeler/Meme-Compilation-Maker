@echo Meme Compilation Maker (v1.0)
@echo Created By NamesJoeyWheeler
@echo .............................
for %%f in (./src/*.mp4) do echo file %%f >> ./src/list.txt; done 
cd src 
ffmpeg -f concat -safe 0 -i list.txt -vf scale=1280:-1 stitched-video.mp4
del list.txt
@echo Meme Compilation Compiled!
@pause