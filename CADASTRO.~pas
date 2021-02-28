unit CADASTRO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids,
  IWControl, IWDBStdCtrls, Mask, DBCtrls;

type
  TCadastrodeParticipantes = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    adoDadosPessoais: TADOTable;
    adoDadosPessoaisCdigo: TAutoIncField;
    adoDadosPessoaisNome: TWideStringField;
    adoDadosPessoaisSobrenome: TWideStringField;
    adoDadosPessoaisSala_Treinamento: TIntegerField;
    adoDadosPessoaisSala_Intervalo: TIntegerField;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ADOTable2: TADOTable;
    ADOTabel2Codigo: TAutoIncField;
    DataSource2: TDataSource;
    adoSalaEvento: TADOTable;
    DataSourceSalaEvento: TDataSource;
    adoSalaEventoCdigo: TAutoIncField;
    adoSalaEventoNome_Sala: TWideStringField;
    adoSalaEventoLotacao_Evento: TIntegerField;
    adoDadosPessoaisNomeSalaTreinamento: TWideStringField;
    DataSourceSalaIntervalo: TDataSource;
    adoSalaIntervalo: TADOTable;
    adoSalaIntervaloCdigo: TAutoIncField;
    adoSalaIntervaloNome_Sala_Cafe: TWideStringField;
    adoSalaIntervaloLotacao_Sala_Cafe: TIntegerField;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    BitBtn1: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure adoDadosPessoaisAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastrodeParticipantes: TCadastrodeParticipantes;

implementation

{$R *.dfm}

procedure TCadastrodeParticipantes.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TCadastrodeParticipantes.adoDadosPessoaisAfterInsert(DataSet: TDataSet);
var
  novoCodigo: integer;
begin
  // ADOTable2 temporário usado para criar o novo código.

  ADOTable2.Open;

  // Vai para o último registro
  ADOTable2.Last;

  // Pega o código e adiciona +1
  novoCodigo := ADOTabel2Codigo.asinteger+1;

  // Fecha o ADOTable2 temporário
  ADOTable2.Close;

  // Preenche o campo código com o novo código gerado.
  adoDadosPessoaisCdigo.AsInteger := NovoCodigo;
end;

procedure TCadastrodeParticipantes.FormShow(Sender: TObject);
begin
  ADOConnection1.Close;
  ADOConnection1.Open;

  adoDadosPessoais.Open;
  adoSalaEvento.Open;
  adoSalaIntervalo.Open;

end;

end.
