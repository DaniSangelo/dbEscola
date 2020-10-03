unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Alunos1: TMenuItem;
    Instrutores1: TMenuItem;
    urmas1: TMenuItem;
    Prrequisitos1: TMenuItem;
    procedure Alunos1Click(Sender: TObject);
    procedure Instrutores1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uAlunos, uInstrutores, uLogin;

procedure TfrmPrincipal.Alunos1Click(Sender: TObject);
begin
  CriaAlunos;
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
  CriaLogin;
end;

procedure TfrmPrincipal.Instrutores1Click(Sender: TObject);
begin
  CriaInstrutor;
end;

end.
