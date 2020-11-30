inherited frmAlunos: TfrmAlunos
  Caption = 'Alunos'
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    inherited spbRefresh: TSpeedButton
      OnClick = spbRefreshClick
    end
    inherited Panel1: TPanel
      inherited edtPesquisar: TEdit
        OnChange = edtPesquisarChange
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 364
        ExplicitHeight = 21
      end
    end
  end
  inherited dbgPadrao: TDBGrid
    OnColEnter = dbgPadraoColEnter
  end
  inherited dbnPadrao: TDBNavigator
    Hints.Strings = ()
  end
  inherited dtsPadrao: TDataSource
    DataSet = DataModule1.fdqAlunos
  end
end
