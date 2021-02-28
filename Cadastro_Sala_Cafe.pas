unit Cadastro_Sala_Cafe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, Mask;

type
  TSalaCafe = class(TForm)
    ADOConnection4: TADOConnection;
    ADOTable4: TADOTable;
    DataSource4: TDataSource;
    ADOTable4Cdigo: TAutoIncField;
    ADOTable4Nome_Sala_Cafe: TWideStringField;
    ADOTable4Lotacao_Sala_Cafe: TIntegerField;
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
    procedure Button1Click(Sender: TObject);
    procedure ADOTable4AfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaCafe: TSalaCafe;

implementation

{$R *.dfm}

procedure TSalaCafe.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TSalaCafe.ADOTable4AfterInsert(DataSet: TDataSet);
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
  ADOTable4Cdigo.AsInteger := NovoCodigo;
  DBEdit2.SetFocus;
end;

end.
