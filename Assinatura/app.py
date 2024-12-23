from flask import Flask, render_template, request
import base64

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/gerar', methods=['POST'])
def gerar():
    nome = request.form['nome']
    cargo = request.form['cargo']
    empresa = request.form['empresa']
    telefoneComercial = request.form['telefoneComercial']
    telefone = request.form['telefone']
    email = request.form['email']
    website = request.form['website']
    facebook = request.form['facebook']
    twitter = request.form['twitter']
    linkedin = request.form['linkedin']
    foto = request.files['foto']
    fotoBase64 = ''
    
    if foto:
        fotoBase64 = base64.b64encode(foto.read()).decode('utf-8')
    
    assinatura_template = f"""
    Atenciosamente, 
    <div style="display: flex; align-items: center; font-family: Arial, sans-serif; color: #333;">
      <div style="flex-shrink: 0;">
        {f'<img src="data:image/png;base64,{fotoBase64}" alt="Foto" style="margin-right: 10px;" width="100" height="100">' if fotoBase64 else ''}
      </div>
      <div>
        <p><strong>{nome}</strong></p>
        <p>
          <i>{cargo}</i><br>
          <strong>{empresa}</strong>
        </p>
        <p style="font-size: 0.8em; color: #777;">
          {f'Telefone Comercial: <a href="tel:{telefoneComercial}" style="color: #00f;">{telefoneComercial}</a><br>' if telefoneComercial else ''}
          Celular: <a href="tel:{telefone}" style="color: #00f;">{telefone}</a><br>
          Email: <a href="mailto:{email}" style="color: #00f;">{email}</a><br>
          Website: <a href="{website}" style="color: #00f;">{website}</a>
        </p>
        <div style="margin-top: 10px;">
          {f'<a href="{facebook}" style="margin-right: 5px;"><img src="https://giovanipm.github.io/rc_images/facebook_icon.png" alt="Facebook" width="5%" height="5%"></a>' if facebook else ''}
          {f'<a href="{twitter}" style="margin-right: 5px;"><img src="https://giovanipm.github.io/rc_images/twitter_icon.png" alt="Twitter" width="5%" height="5%"></a>' if twitter else ''}
          {f'<a href="{linkedin}" style="margin-right: 5px;"><img src="https://giovanipm.github.io/rc_images/linkedin_icon.png" alt="LinkedIn" width="5%" height="5%"></a>' if linkedin else ''}
        </div>
      </div>
    </div>
    """
    
    return render_template('index.html', assinatura=assinatura_template)

if __name__ == '__main__':
    app.run(debug=True)
