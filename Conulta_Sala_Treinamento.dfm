object Consulta_Sala_Treinamento: TConsulta_Sala_Treinamento
  Left = 376
  Top = 167
  Width = 726
  Height = 463
  Caption = 'Consulta Salas Treinamento'
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 426
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 187
    Width = 718
    Height = 244
    DataSource = DataSourceConSalTreinamento
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 637
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 34
    Top = 64
    Width = 377
    Height = 25
    TabOrder = 3
    Text = 'Digite o nome ou parte do nome participante'
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Banco.mdb;Persist S' +
      'ecurity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 88
    Top = 24
  end
  object adoConSalaTreinamento: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Salas_Evento'
    Left = 120
    Top = 24
    object adoConSalaTreinamentoCdigo: TAutoIncField
      FieldName = 'C'#243'digo'
      ReadOnly = True
    end
    object adoConSalaTreinamentoNome_Sala: TWideStringField
      FieldName = 'Nome_Sala'
      Size = 150
    end
    object adoConSalaTreinamentoLotacao_Evento: TIntegerField
      FieldName = 'Lotacao_Evento'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 184
    Top = 24
  end
  object DataSourceConSalTreinamento: TDataSource
    DataSet = ADOQuery1
    Left = 152
    Top = 24
  end
end
