inherited frmInstrutores: TfrmInstrutores
  Caption = 'Instrutores'
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    ButtonHeight = 28
    inherited spbIncluir: TSpeedButton
      Height = 28
      ExplicitHeight = 28
    end
    inherited spbEditar: TSpeedButton
      Height = 28
      ExplicitHeight = 28
    end
    inherited spbExcluir: TSpeedButton
      Height = 28
      ExplicitHeight = 28
    end
    inherited spbSalvar: TSpeedButton
      Height = 28
      ExplicitHeight = 28
    end
    inherited spbCancelar: TSpeedButton
      Height = 28
      ExplicitHeight = 28
    end
    inherited spbPesquisar: TSpeedButton
      Height = 28
      ExplicitHeight = 28
    end
    inherited spbRefresh: TSpeedButton
      Height = 28
      ExplicitHeight = 28
    end
    inherited edtPesquisar: TEdit
      Height = 28
      ExplicitHeight = 28
    end
  end
  inherited dbnPadrao: TDBNavigator
    Hints.Strings = ()
  end
  inherited dtsPadrao: TDataSource
    DataSet = DataModule1.fdqInstrutores
  end
end
