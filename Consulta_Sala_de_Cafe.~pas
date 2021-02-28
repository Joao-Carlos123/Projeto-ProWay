unit Consulta_Sala_de_Cafe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ADODB, DB, StdCtrls;

type
  TConsulta_Sala_Cafe = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    ADOConnection1: TADOConnection;
    adoConsultaSalaCafe: TADOTable;
    DataSourceConSalCafe: TDataSource;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    adoConsultaSalaCafeCdigo: TAutoIncField;
    adoConsultaSalaCafeNome_Sala_Cafe: TWideStringField;
    adoConsultaSalaCafeLotacao_Sala_Cafe: TIntegerField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Consulta_Sala_Cafe: TConsulta_Sala_Cafe;

implementation

{$R *.dfm}

procedure TConsulta_Sala_Cafe.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TConsulta_Sala_Cafe.Button1Click(Sender: TObject);
begin

  with ADOQuery1 do
  begin
  Active := False;
  SQL.Clear;
  SQL.Add('select left(dados_pessoais.Nome,50) as Nome,Left(dados_pessoais.Sobrenome,50) as Sobrenome,Left(Sala_Cafe.Nome_Sala_Cafe,30) as Sala from dados_pessoais,Sala_Cafe');
  SQL.Add('where dados_pessoais.Sala_Intervalo=Sala_Cafe.código');
  SQL.Add('and dados_pessoais.nome like' +  QuotedStr (Edit1.Text + '%'));
  Active := True
  end;

end;

end.
