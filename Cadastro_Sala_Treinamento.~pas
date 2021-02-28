unit Cadastro_Sala_Treinamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TSalaTreinamento = class(TForm)
    ADOConnection3: TADOConnection;
    ADOTable3: TADOTable;
    DataSource3: TDataSource;
    ADOTable3Cdigo: TAutoIncField;
    ADOTable3Nome_Sala: TWideStringField;
    ADOTable3Lotacao_Evento: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Button1: TButton;
    ADONovoCodigo: TADOTable;
    DataSourceNovoCodigo: TDataSource;
    ADONovoCodigoCdigo: TAutoIncField;
    //DataSource3: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure ADOTable3AfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaTreinamento: TSalaTreinamento;

implementation

{$R *.dfm}

procedure TSalaTreinamento.Button1Click(Sender: TObject);
begin
  close;
end;
procedure TSalaTreinamento.ADOTable3AfterInsert(DataSet: TDataSet);
var
  novoCodigo: integer;
begin
  ADONovoCodigo.Open;

  // Vai para o último registro
  ADONovoCodigo.Last;

  // Pega o código e adiciona +1
  novoCodigo := ADONovoCodigoCdigo.asinteger+1;

  ADONovoCodigo.Close;

  // Preenche o campo código com o novo código gerado.
  ADOTable3Cdigo.AsInteger := NovoCodigo;
  DBEdit2.SetFocus;
end;

end.


