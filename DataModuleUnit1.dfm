object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 376
  Width = 504
  object fdcEscola: TFDConnection
    Params.Strings = (
      'Database=dbEscola'
      'User_Name=root'
      'Password=daniel'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    Left = 416
    Top = 200
  end
  object fdqAlunos: TFDQuery
    BeforeInsert = fdqAlunosBeforeInsert
    OnNewRecord = fdqAlunosNewRecord
    Connection = fdcEscola
    SQL.Strings = (
      'SELECT CDMATRICULA, NMALUNO, NRTELALUNO,'
      '       DTNASCALUNO'
      '  FROM ALUNOS'
      ' WHERE (NMALUNO LIKE :P_NOME OR '#39'T'#39' = IFNULL(:P_NOME, '#39'T'#39'))'
      ' ORDER BY CDMATRICULA')
    Left = 416
    Top = 256
    ParamData = <
      item
        Name = 'P_NOME'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
    object fdqAlunosCDMATRICULA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDMATRICULA'
      Origin = 'CDMATRICULA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqAlunosNMALUNO: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NMALUNO'
      Origin = 'NMALUNO'
      Required = True
      Size = 30
    end
    object fdqAlunosNRTELALUNO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Telefone'
      FieldName = 'NRTELALUNO'
      Origin = 'NRTELALUNO'
      Size = 10
    end
    object fdqAlunosDTNASCALUNO: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt.Nascimento'
      FieldName = 'DTNASCALUNO'
      Origin = 'DTNASCALUNO'
      EditMask = '!99/99/0000;1;'
    end
  end
  object fdqInstrutores: TFDQuery
    Active = True
    Connection = fdcEscola
    SQL.Strings = (
      'SELECT CDINSTRUTOR, NMINSTRUTOR, DTADMISSAO, NRTELINSTRUTOR'
      '  FROM INSTRUTORES'
      ' WHERE (NMINSTRUTOR LIKE :P_NOME OR IFNULL(:P_NOME, '#39'T'#39') = '#39'T'#39')'
      ' ORDER BY CDINSTRUTOR')
    Left = 192
    Top = 248
    ParamData = <
      item
        Name = 'P_NOME'
        DataType = ftString
        ParamType = ptInput
      end>
    object fdqInstrutoresCDINSTRUTOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDINSTRUTOR'
      Origin = 'CDINSTRUTOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqInstrutoresNMINSTRUTOR: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NMINSTRUTOR'
      Origin = 'NMINSTRUTOR'
      Required = True
      Size = 30
    end
    object fdqInstrutoresDTADMISSAO: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Admiss'#227'o'
      FieldName = 'DTADMISSAO'
      Origin = 'DTADMISSAO'
    end
    object fdqInstrutoresNRTELINSTRUTOR: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Telefone'
      FieldName = 'NRTELINSTRUTOR'
      Origin = 'NRTELINSTRUTOR'
      Size = 10
    end
  end
  object fdqUsuarios: TFDQuery
    Connection = fdcEscola
    SQL.Strings = (
      'SELECT NMUSUARIO'
      '  FROM USUARIOS'
      ' WHERE LOGIN = :P_NMUSUARIO'
      '    AND SENHA = :P_SENHA')
    Left = 296
    Top = 136
    ParamData = <
      item
        Name = 'P_NMUSUARIO'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'P_SENHA'
        DataType = ftString
        ParamType = ptInput
      end>
    object fdqUsuariosNMUSUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NMUSUARIO'
      Origin = 'nmusuario'
      Size = 30
    end
  end
end
