unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmLogin = class(TForm)
    edtUsuario: TEdit;
    edtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnLogin: TButton;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
    procedure validaLogin(p_usuario, p_senha: string);
  public
    { Public declarations }

  end;

var
  frmLogin: TfrmLogin;
  boCriado: boolean = false;
  boOk: boolean = false;
  function CriaLogin: boolean;

implementation

{$R *.dfm}

uses DataModuleUnit1;

function CriaLogin: boolean;
begin
  if not (boCriado) then begin
    boCriado := true;
    Application.CreateForm(TfrmLogin, frmLogin);
    frmLogin.WindowState := wsNormal;
    frmLogin.ShowModal;
    Result := boOk;
  end;
end;

{ TfrmLogin }

procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin
  validaLogin(edtUsuario.Text, edtSenha.Text);
end;

procedure TfrmLogin.validaLogin(p_usuario, p_senha: string);
begin
  with DataModule1.fdqUsuarios do begin
    Close;
    ParamByName('P_NMUSUARIO').AsString := p_usuario;
    ParamByName('P_SENHA'    ).AsString := p_senha;
    Open;

    if IsEmpty then begin
      MessageDlg('Usuário ou senha inválidos', mtInformation, [mbOk], 0);
      edtUsuario.SetFocus
    end
    else begin
      MessageDlg('Bem vindo, ' + p_usuario, mtInformation, [mbOk], 0);
      boOk := true;
      frmLogin.Close;
    end;
  end;
end;

end.
