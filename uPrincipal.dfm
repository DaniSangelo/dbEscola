object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  HelpType = htKeyword
  Caption = 'Gest'#227'o Escolar'
  ClientHeight = 476
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 336
    Top = 240
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Alunos1: TMenuItem
        Caption = 'Alunos'
        OnClick = Alunos1Click
      end
      object Instrutores1: TMenuItem
        Caption = 'Instrutores'
        OnClick = Instrutores1Click
      end
      object urmas1: TMenuItem
        Caption = 'Turmas'
      end
      object Prrequisitos1: TMenuItem
        Caption = 'Pr'#233'-requisitos'
      end
    end
  end
end
