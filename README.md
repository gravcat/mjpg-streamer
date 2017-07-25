# mjpg-streamer helpers!

to install the service file

## fast install:
```
curl https://raw.githubusercontent.com/gravcat/mjpg-streamer/master/webcam_stream | sudo tee /etc/init.d/webcam_stream >/dev/null
sudo chmod +x /etc/init.d/webcam_stream
sudo update-rc.d webcam_stream defaults
sudo service webcam_stream start
```

## safe install:
```
curl https://raw.githubusercontent.com/gravcat/mjpg-streamer/master/webcam_stream
vi webcam_stream # to inspect the contents
sudo chmod +x $file
sudo mv $file /etc/init.d/webcam_stream
sudo update-rc.d webcam_stream defaults
sudo service webcam_stream start
```

#### customizations
the script assumes the following. if any of these points don't apply to you, you'll need to change variables at the top of the file once you have it locally.

* you're using a webcam that supports `1080p30fps`
  * for lower power devices such as earlier Pis, you may want to turn down resolution and framerate to save on CPU overhead
* you're wishing to export on port `8080` (firewall this from your WAN!)
* you have mjpg available in `/home/pi/mjpg-streamer/mjpg-streamer-experimental`
  * this is correct if you cloned mjpg-streamer from ~ as user pi
