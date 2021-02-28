object CadastrodeParticipantes: TCadastrodeParticipantes
  Left = 359
  Top = 124
  Width = 831
  Height = 595
  Caption = 'Cadastro de Participantes'
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 823
    Height = 40
    Align = alTop
    Caption = 'Cadastro Participante'
    TabOrder = 0
  end
  object Panel3: TPanel
    Left = 0
    Top = 288
    Width = 824
    Height = 43
    Align = alCustom
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 8
      Width = 530
      Height = 25
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 329
    Width = 825
    Height = 233
    Align = alCustom
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 0
      Top = 1
      Width = 824
      Height = 231
      Align = alRight
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'C'#243'digo'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sobrenome'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sala_Treinamento'
          Title.Caption = 'Sala Treinamento'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sala_Intervalo'
          Title.Caption = 'Sala Intervalo'
          Width = 100
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 40
    Width = 823
    Height = 249
    Align = alCustom
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 28
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 8
      Top = 88
      Width = 54
      Height = 13
      Caption = 'Sobrenome'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 8
      Top = 128
      Width = 83
      Height = 13
      Caption = 'Sala Treinamento'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 8
      Top = 168
      Width = 61
      Height = 13
      Caption = 'Sala de Caf'#233
      FocusControl = DBEdit5
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 134
      Height = 21
      DataField = 'C'#243'digo'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 64
      Width = 537
      Height = 21
      DataField = 'Nome'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 104
      Width = 537
      Height = 21
      DataField = 'Sobrenome'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 144
      Width = 134
      Height = 21
      DataField = 'Sala_Treinamento'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 8
      Top = 184
      Width = 134
      Height = 21
      DataField = 'Sala_Intervalo'
      DataSource = DataSource1
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      Left = 736
      Top = 216
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 144
      Top = 144
      Width = 401
      Height = 21
      DataField = 'Sala_Treinamento'
      DataSource = DataSource1
      KeyField = 'C'#243'digo'
      ListField = 'Nome_Sala'
      ListSource = DataSourceSalaEvento
      TabOrder = 6
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 144
      Top = 184
      Width = 401
      Height = 21
      DataField = 'Sala_Intervalo'
      DataSource = DataSource1
      DropDownRows = 15
      KeyField = 'C'#243'digo'
      ListField = 'Nome_Sala_Cafe'
      ListSource = DataSourceSalaIntervalo
      TabOrder = 7
    end
  end
  object DataSource1: TDataSource
    DataSet = adoDadosPessoais
    Left = 200
    Top = 8
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Banco.mdb;Persist S' +
      'ecurity Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 8
  end
  object adoDadosPessoais: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterInsert = adoDadosPessoaisAfterInsert
    TableName = 'Dados_Pessoais'
    Left = 168
    Top = 8
    object adoDadosPessoaisCdigo: TAutoIncField
      FieldName = 'C'#243'digo'
    end
    object adoDadosPessoaisNome: TWideStringField
      FieldName = 'Nome'
      Size = 255
    end
    object adoDadosPessoaisSobrenome: TWideStringField
      FieldName = 'Sobrenome'
      Size = 255
    end
    object adoDadosPessoaisSala_Treinamento: TIntegerField
      FieldName = 'Sala_Treinamento'
    end
    object adoDadosPessoaisSala_Intervalo: TIntegerField
      FieldName = 'Sala_Intervalo'
    end
    object adoDadosPessoaisNomeSalaTreinamento: TWideStringField
      FieldKind = fkLookup
      FieldName = 'NomeSalaTreinamento'
      LookupDataSet = adoSalaEvento
      LookupKeyFields = 'Nome_Sala'
      LookupResultField = 'C'#243'digo'
      KeyFields = 'Sala_Treinamento'
      Size = 50
      Lookup = True
    end
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Dados_Pessoais'
    Left = 280
    object ADOTabel2Codigo: TAutoIncField
      FieldName = 'C'#243'digo'
      ReadOnly = True
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 312
  end
  object adoSalaEvento: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Salas_Evento'
    Left = 168
    Top = 48
    object adoSalaEventoCdigo: TAutoIncField
      FieldName = 'C'#243'digo'
      ReadOnly = True
    end
    object adoSalaEventoNome_Sala: TWideStringField
      FieldName = 'Nome_Sala'
      Size = 255
    end
    object adoSalaEventoLotacao_Evento: TIntegerField
      FieldName = 'Lotacao_Evento'
    end
  end
  object DataSourceSalaEvento: TDataSource
    DataSet = adoSalaEvento
    Left = 200
    Top = 48
  end
  object DataSourceSalaIntervalo: TDataSource
    DataSet = adoSalaIntervalo
    Left = 720
    Top = 8
  end
  object adoSalaIntervalo: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Sala_Cafe'
    Left = 688
    Top = 8
    object adoSalaIntervaloCdigo: TAutoIncField
      FieldName = 'C'#243'digo'
      ReadOnly = True
    end
    object adoSalaIntervaloNome_Sala_Cafe: TWideStringField
      FieldName = 'Nome_Sala_Cafe'
      Size = 255
    end
    object adoSalaIntervaloLotacao_Sala_Cafe: TIntegerField
      FieldName = 'Lotacao_Sala_Cafe'
    end
  end
end
