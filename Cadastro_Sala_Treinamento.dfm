object SalaTreinamento: TSalaTreinamento
  Left = 323
  Top = 154
  Width = 626
  Height = 500
  Caption = 'Cadastro Sala de Treinamento'
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 52
    Height = 13
    Caption = 'Nome Sala'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 96
    Width = 76
    Height = 13
    Caption = 'Lotacao Evento'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 32
    Width = 134
    Height = 21
    DataField = 'C'#243'digo'
    DataSource = DataSource3
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 72
    Width = 450
    Height = 21
    DataField = 'Nome_Sala'
    DataSource = DataSource3
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 112
    Width = 134
    Height = 21
    DataField = 'Lotacao_Evento'
    DataSource = DataSource3
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 192
    Width = 580
    Height = 25
    DataSource = DataSource3
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 248
    Width = 617
    Height = 219
    DataSource = DataSource3
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_Sala'
        Title.Caption = 'Nome Sala'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lotacao_Evento'
        Title.Caption = 'Lota'#231#227'o Evento'
        Width = 100
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 528
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 5
    OnClick = Button1Click
  end
  object ADOConnection3: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Banco.mdb;Persist S' +
      'ecurity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 576
    Top = 8
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection3
    CursorType = ctStatic
    AfterInsert = ADOTable3AfterInsert
    TableName = 'Salas_Evento'
    Left = 576
    Top = 40
    object ADOTable3Cdigo: TAutoIncField
      FieldName = 'C'#243'digo'
    end
    object ADOTable3Nome_Sala: TWideStringField
      FieldName = 'Nome_Sala'
      Size = 255
    end
    object ADOTable3Lotacao_Evento: TIntegerField
      FieldName = 'Lotacao_Evento'
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 576
    Top = 72
  end
  object ADONovoCodigo: TADOTable
    Connection = ADOConnection3
    CursorType = ctStatic
    TableName = 'Salas_Evento'
    Left = 536
    Top = 40
    object ADONovoCodigoCdigo: TAutoIncField
      FieldName = 'C'#243'digo'
      ReadOnly = True
    end
  end
  object DataSourceNovoCodigo: TDataSource
    DataSet = ADONovoCodigo
    Left = 536
    Top = 72
  end
end
