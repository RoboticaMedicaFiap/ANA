from cv2 import imencode, VideoCapture

camera = VideoCapture(0)

def generate():
  if camera is None or not camera.isOpened():
    return False

  while True:
    success, frame = camera.read()  # read the camera frame
    if not success:
      break
    else:
      ret, buffer = imencode('.jpg', frame)
      frame = buffer.tobytes()
      yield b'--frame\r\n'  b'Content-Type: image/jpeg\r\n\r\n' + frame + b'\r\n'
