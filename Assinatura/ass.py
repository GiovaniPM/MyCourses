import os

def gerar_assinatura(nome, cargo, empresa, telefone, email, website, facebook='', twitter='', linkedin=''):
    assinatura_template = f"""
    <div style="font-family: Arial, sans-serif; color: #333;">
      <p>Atenciosamente,</p>
      <p><strong>{nome}</strong></p>
      <p>{cargo}<br>{empresa}</p>
      <p style="font-size: 0.8em; color: #777;">Telefone: {telefone}</p>
      <p style="font-size: 0.8em; color: #777;">Email: {email}</p>
      <p style="font-size: 0.8em; color: #777;">Website: <a href="{website}" style="color: #00f;">{website}</a></p>
      <div style="margin-top: 10px;">
        {f'<a href="{facebook}" style="margin-right: 5px;"><img src="https://via.placeholder.com/16" alt="Facebook"></a>' if facebook else ''}
        {f'<a href="{twitter}" style="margin-right: 5px;"><img src="https://via.placeholder.com/16" alt="Twitter"></a>' if twitter else ''}
        {f'<a href="{linkedin}" style="margin-right: 5px;"><img src="https://via.placeholder.com/16" alt="LinkedIn"></a>' if linkedin else ''}
      </div>
    </div>
    """
    return assinatura_template

def salvar_assinatura(assinatura, arquivo="assinatura.html"):
    with open(arquivo, 'w', encoding='utf-8') as file:
        file.write(assinatura)
    print(f"Assinatura salva em {os.path.abspath(arquivo)}")

# Exemplo de uso
nome = "Seu Nome"
cargo = "Seu Cargo"
empresa = "Nome da Empresa"
telefone = "(xx) xxxx-xxxx"
email = "seuemail@dominio.com"
website = "http://www.suaempresa.com"
facebook = "http://www.facebook.com"
twitter = "http://www.twitter.com"
linkedin = "http://www.linkedin.com"

assinatura = gerar_assinatura(nome, cargo, empresa, telefone, email, website, facebook, twitter, linkedin)
salvar_assinatura(assinatura)
