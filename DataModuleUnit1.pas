unit DataModuleUnit1;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
    fdcEscola: TFDConnection;
    fdqAlunos: TFDQuery;
    fdqAlunosCDMATRICULA: TIntegerField;
    fdqAlunosNMALUNO: TStringField;
    fdqAlunosNRTELALUNO: TStringField;
    fdqAlunosDTNASCALUNO: TDateField;
    fdqInstrutores: TFDQuery;
    fdqInstrutoresCDINSTRUTOR: TIntegerField;
    fdqInstrutoresNMINSTRUTOR: TStringField;
    fdqInstrutoresDTADMISSAO: TDateField;
    fdqInstrutoresNRTELINSTRUTOR: TStringField;
    fdqUsuarios: TFDQuery;
    fdqUsuariosNMUSUARIO: TStringField;
    procedure fdqAlunosBeforeInsert(DataSet: TDataSet);
    procedure fdqAlunosNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    prxCodigo: integer;
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uAlunos;

{$R *.dfm}

procedure TDataModule1.fdqAlunosBeforeInsert(DataSet: TDataSet);
begin
  fdqAlunos.Last;
  prxCodigo := fdqAlunosCDMATRICULA.AsInteger + 1;
end;

procedure TDataModule1.fdqAlunosNewRecord(DataSet: TDataSet);
begin
  fdqAlunosCDMATRICULA.AsInteger := prxCodigo;
end;

end.
