object Consulta_Participantes: TConsulta_Participantes
  Left = 376
  Top = 167
  Width = 729
  Height = 503
  Caption = 'Consulta Participantes'
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 24
    Top = 64
    Width = 377
    Height = 24
    TabOrder = 0
    Text = 'Digite o nome do participante'
  end
  object Button1: TButton
    Left = 416
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 640
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 184
    Width = 720
    Height = 281
    DataSource = DataSourceConPart
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object adoConusltaParticipante: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Banco.mdb;Persist S' +
      'ecurity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 688
    Top = 56
  end
  object adoConPart: TADOTable
    Connection = adoConusltaParticipante
    CursorType = ctStatic
    TableName = 'Dados_Pessoais'
    Left = 688
    Top = 88
    object adoConPartCdigo: TAutoIncField
      DisplayWidth = 12
      FieldName = 'C'#243'digo'
      ReadOnly = True
    end
    object adoConPartNome: TWideStringField
      DisplayWidth = 44
      FieldName = 'Nome'
      Size = 180
    end
    object adoConPartSobrenome: TWideStringField
      DisplayWidth = 39
      FieldName = 'Sobrenome'
      Size = 150
    end
    object adoConPartSala_Treinamento: TIntegerField
      DisplayWidth = 17
      FieldName = 'Sala_Treinamento'
    end
    object adoConPartSala_Intervalo: TIntegerField
      DisplayWidth = 14
      FieldName = 'Sala_Intervalo'
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = adoConusltaParticipante
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pnome'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from Dados_Pessoais'
      'where Nome like :pnome')
    Left = 688
    Top = 152
    object ADOQuery1Cdigo: TAutoIncField
      DisplayWidth = 15
      FieldName = 'C'#243'digo'
      ReadOnly = True
    end
    object ADOQuery1Nome: TWideStringField
      DisplayWidth = 39
      FieldName = 'Nome'
      Size = 150
    end
    object ADOQuery1Sobrenome: TWideStringField
      DisplayWidth = 44
      FieldName = 'Sobrenome'
      Size = 150
    end
    object ADOQuery1Sala_Treinamento: TIntegerField
      DisplayLabel = 'Sala Treinamento'
      DisplayWidth = 21
      FieldName = 'Sala_Treinamento'
    end
    object ADOQuery1Sala_Intervalo: TIntegerField
      DisplayLabel = 'Sala Intervalo'
      DisplayWidth = 17
      FieldName = 'Sala_Intervalo'
    end
  end
  object DataSourceConPart: TDataSource
    DataSet = ADOQuery1
    Left = 688
    Top = 120
  end
end
