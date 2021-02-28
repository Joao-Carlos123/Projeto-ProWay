object Consulta_Sala_Cafe: TConsulta_Sala_Cafe
  Left = 374
  Top = 261
  Width = 726
  Height = 463
  Caption = 'Consulta Sala de Caf'#233
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
    Height = 25
    TabOrder = 0
    Text = 'Digite o nome ou parte do nome do participante'
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
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 187
    Width = 717
    Height = 244
    DataSource = DataSourceConSalCafe
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Banco.mdb;Persist S' +
      'ecurity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 16
  end
  object adoConsultaSalaCafe: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Sala_Cafe'
    Left = 104
    Top = 16
    object adoConsultaSalaCafeCdigo: TAutoIncField
      FieldName = 'C'#243'digo'
      ReadOnly = True
    end
    object adoConsultaSalaCafeNome_Sala_Cafe: TWideStringField
      FieldName = 'Nome_Sala_Cafe'
      Size = 150
    end
    object adoConsultaSalaCafeLotacao_Sala_Cafe: TIntegerField
      FieldName = 'Lotacao_Sala_Cafe'
    end
  end
  object DataSourceConSalCafe: TDataSource
    DataSet = ADOQuery1
    Left = 144
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 184
    Top = 16
  end
end
