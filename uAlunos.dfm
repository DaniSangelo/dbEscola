inherited frmAlunos: TfrmAlunos
  Caption = 'Alunos'
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    inherited spbPesquisar: TSpeedButton
      OnClick = spbPesquisarClick
    end
  end
  inherited dbgPadrao: TDBGrid
    OnColEnter = dbgPadraoColEnter
  end
  inherited dbnPadrao: TDBNavigator
    Hints.Strings = ()
    ExplicitLeft = 0
    ExplicitTop = 298
    ExplicitWidth = 686
  end
  inherited dtsPadrao: TDataSource
    DataSet = DataModule1.fdqAlunos
  end
end
