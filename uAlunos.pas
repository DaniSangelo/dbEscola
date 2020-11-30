unit uAlunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls;
type
  EErrorBusiness = class(Exception);
type
  TfrmAlunos = class(TfrmPadraoSimples)
    procedure dbgPadraoColEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edtPesquisarChange(Sender: TObject);
    procedure spbRefreshClick(Sender: TObject);

  private
    { Private declarations }
    procedure getAlunos(p_nome: string);
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
//  if not (boCriado) then begin
//    boCriado := true;
//    Application.CreateForm(TfrmAlunos, frmAlunos);
//    frmAlunos.WindowState := wsNormal;
//    frmAlunos.Show;
//  end;
  if not Assigned(frmAlunos) then begin
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

procedure TfrmAlunos.edtPesquisarChange(Sender: TObject);
begin
  inherited;
  getAlunos('%' + edtPesquisar.Text + '%');
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
  getAlunos('');
  dbnPadrao.VisibleButtons := [nbNext, nbPrior, nbFirst, nbLast];
end;

procedure TfrmAlunos.getAlunos(p_nome: string);
begin
  DataModule1.fdqAlunos.Close;
  if p_nome = '' then
    DataModule1.fdqAlunos.ParamByName('P_NOME').Clear
  else
    DataModule1.fdqAlunos.ParamByName('P_NOME').AsString := p_nome;
  DataModule1.fdqAlunos.Open;
end;

procedure TfrmAlunos.spbRefreshClick(Sender: TObject);
begin
  //inherited;
  DataModule1.fdqAlunos.Refresh;
end;

end.
