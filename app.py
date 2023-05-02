"""APP"""

from flask import Flask, render_template, Response
from flask_assets import Environment, Bundle

from dotenv import load_dotenv

from utils.frame import generate

load_dotenv()

app = Flask(__name__)

environment = Environment(app)
styles = Bundle(Bundle('styles/lib/reset.scss', 'styles/lib/grid.scss', 'styles/lib/keyframes.scss', 'styles/lib/main.scss', filters='pyscss', output='style.css'), filters='cssmin', output= 'styles/style.min.css')
scripts = Bundle('scripts/lib/jquery-3.6.4.min.js', 'scripts/lib/particles-2.2.3.min.js', 'scripts/lib/main.js', filters='jsmin', output='scripts/script.min.js')

environment.register('scripts', scripts)
environment.register('styles', styles)
environment.url = app.static_url_path

@app.route('/')
@app.route('/page-0')
def page0():
  """render Page 0"""
  return render_template('index.j2', title='FIAP - Robótica Medica', step=0)

@app.route('/page-1')
def page1():
  """render Page 1"""
  return render_template('index.j2', title='Temp', step=1)


@app.route('/video')
def video():
  """video"""
  return Response(generate(), mimetype='multipart/x-mixed-replace; boundary=frame')


@app.route('/watson')
def watson():
  """Faz autenticação do Watson"""
  return print('Watson')

if __name__ == "__main__":
  app.run()
