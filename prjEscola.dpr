program prjEscola;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  DataModuleUnit1 in 'DataModuleUnit1.pas' {DataModule1: TDataModule},
  uAlunos in 'uAlunos.pas' {frmAlunos},
  uPadrao in '..\padroes\uPadrao.pas' {frmPadraoSimples},
  uInstrutores in 'uInstrutores.pas' {frmInstrutores},
  uLogin in 'uLogin.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
