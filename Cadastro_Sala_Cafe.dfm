object SalaCafe: TSalaCafe
  Left = 360
  Top = 157
  Width = 649
  Height = 497
  Caption = 'Cadastro Sala de Caf'#233
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
    Left = 16
    Top = 16
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 77
    Height = 13
    Caption = 'Nome Sala Caf'#233
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 96
    Width = 88
    Height = 13
    Caption = 'Lotacao Sala Caf'#233
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 32
    Width = 134
    Height = 21
    DataField = 'C'#243'digo'
    DataSource = DataSource4
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 72
    Width = 450
    Height = 21
    DataField = 'Nome_Sala_Cafe'
    DataSource = DataSource4
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 112
    Width = 134
    Height = 21
    DataField = 'Lotacao_Sala_Cafe'
    DataSource = DataSource4
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 200
    Width = 600
    Height = 25
    DataSource = DataSource4
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 256
    Width = 641
    Height = 209
    DataSource = DataSource4
    FixedColor = clWhite
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
        FieldName = 'Nome_Sala_Cafe'
        Title.Caption = 'Nome Sala Caf'#233
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lotacao_Sala_Cafe'
        Title.Caption = 'Lota'#231#227'o Sala Caf'#233
        Width = 100
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 552
    Top = 8
    Width = 79
    Height = 25
    Caption = 'Sair'
    TabOrder = 5
    OnClick = Button1Click
  end
  object ADOConnection4: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=Banco' +
      '.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:' +
      'System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database' +
      ' Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking ' +
      'Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk' +
      ' Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Cre' +
      'ate System Database=False;Jet OLEDB:Encrypt Database=False;Jet O' +
      'LEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Withou' +
      't Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 600
    Top = 8
  end
  object ADOTable4: TADOTable
    Active = True
    Connection = ADOConnection4
    CursorType = ctStatic
    AfterInsert = ADOTable4AfterInsert
    TableName = 'Sala_Cafe'
    Left = 600
    Top = 40
    object ADOTable4Cdigo: TAutoIncField
      FieldName = 'C'#243'digo'
    end
    object ADOTable4Nome_Sala_Cafe: TWideStringField
      FieldName = 'Nome_Sala_Cafe'
      Size = 255
    end
    object ADOTable4Lotacao_Sala_Cafe: TIntegerField
      FieldName = 'Lotacao_Sala_Cafe'
    end
  end
  object DataSource4: TDataSource
    DataSet = ADOTable4
    Left = 600
    Top = 72
  end
  object ADONovoCodigo: TADOTable
    Connection = ADOConnection4
    CursorType = ctStatic
    TableName = 'Sala_Cafe'
    Left = 560
    Top = 40
    object ADONovoCodigoCdigo: TAutoIncField
      FieldName = 'C'#243'digo'
      ReadOnly = True
    end
  end
  object DataSourceNovoCodigo: TDataSource
    DataSet = ADONovoCodigo
    Left = 560
    Top = 72
  end
end
