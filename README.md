# mjpg-streamer helpers!

to install the service file

## fast install:
```
curl $fileurl | sudo cat /etc/init.d/webcam_stream
sudo chmod +x /etc/init.d/webcam_stream
sudo update-rc.d webcam_stream defaults
sudo service webcam_stream start
```

## safe install:
```
curl $fileurl
vi $file # to inspect the contents
chmod +x $file
sudo mv $file /etc/init.d/webcam_stream
sudo update-rc.d webcam_stream defaults
sudo service webcam_stream start
```
