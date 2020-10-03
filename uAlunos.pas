unit uAlunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmAlunos = class(TfrmPadraoSimples)
    procedure dbgPadraoColEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure spbPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlunos: TfrmAlunos;
  boCriado: boolean = false;
  procedure CriaAlunos;

implementation

{$R *.dfm}

uses DataModuleUnit1, uLogin;

procedure CriaAlunos;
begin
  if not (boCriado) then begin
    boCriado := true;
    Application.CreateForm(TfrmAlunos, frmAlunos);
    frmAlunos.WindowState := wsNormal;
    frmAlunos.Show;
  end;
end;

procedure TfrmAlunos.dbgPadraoColEnter(Sender: TObject);
begin
  inherited;
    if dbgPadrao.SelectedField.FieldName = 'CDMATRICULA' then begin
      dbgPadrao.Options := dbgPadrao.Options - [dgEditing];
    end
    else begin
      dbgPadrao.Options := dbgPadrao.Options + [dgEditing];
    end;
end;

procedure TfrmAlunos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  boCriado := false;
  FreeAndNil(frmAlunos);
end;

procedure TfrmAlunos.FormCreate(Sender: TObject);
begin
  inherited;
  DataModule1.fdqAlunos.Close;
  DataModule1.fdqAlunos.Params.ParamByName('P_NOME').Clear;
  DataModule1.fdqAlunos.Open;
  dbnPadrao.VisibleButtons := [nbNext, nbPrior, nbFirst, nbLast];
end;

procedure TfrmAlunos.spbPesquisarClick(Sender: TObject);
begin
//  inherited;
  DataModule1.fdqAlunos.Refresh;
end;

end.
