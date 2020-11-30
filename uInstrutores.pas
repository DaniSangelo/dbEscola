unit uInstrutores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls;

type
  TfrmInstrutores = class(TfrmPadraoSimples)
    procedure spbRefreshClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInstrutores: TfrmInstrutores;
  boCriado: boolean = false;

  procedure CriaInstrutor;

implementation

{$R *.dfm}

uses DataModuleUnit1;

procedure CriaInstrutor;
begin
  if not (boCriado) then begin
    boCriado := true;
    Application.CreateForm(TfrmInstrutores, frmInstrutores);
    frmInstrutores.WindowState := wsNormal;
    frmInstrutores.Show;
  end;
end;

procedure TfrmInstrutores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  boCriado := false;
end;

procedure TfrmInstrutores.spbRefreshClick(Sender: TObject);
begin
  //inherited;
  DataModule1.fdqInstrutores.Refresh;
end;

end.
