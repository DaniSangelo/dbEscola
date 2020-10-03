inherited frmInstrutores: TfrmInstrutores
  Caption = 'Instrutores'
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    inherited spbRefresh: TSpeedButton
      OnClick = spbRefreshClick
    end
  end
  inherited dtsPadrao: TDataSource
    DataSet = DataModule1.fdqInstrutores
  end
end
