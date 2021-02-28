unit Conulta_Sala_Treinamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, DB, ADODB;

type
  TConsulta_Sala_Treinamento = class(TForm)
    ADOConnection1: TADOConnection;
    adoConSalaTreinamento: TADOTable;
    ADOQuery1: TADOQuery;
    DataSourceConSalTreinamento: TDataSource;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Edit1: TEdit;
    adoConSalaTreinamentoCdigo: TAutoIncField;
    adoConSalaTreinamentoNome_Sala: TWideStringField;
    adoConSalaTreinamentoLotacao_Evento: TIntegerField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Consulta_Sala_Treinamento: TConsulta_Sala_Treinamento;

implementation

{$R *.dfm}

procedure TConsulta_Sala_Treinamento.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TConsulta_Sala_Treinamento.Button1Click(Sender: TObject);
begin

  with ADOQuery1 do
  begin
  Active := False;
  SQL.Clear;
  //SQL.Add('select dados_pessoais.Nome,dados_pessoais.Sobrenome,salas_evento.Nome_Sala from dados_pessoais,Salas_Evento');
  //SQL.Add('select substring(dados_pessoais.Nome,1,50) as Nome,substring(dados_pessoais.Sobrenome,1,50) as Sobrenome,substring(salas_evento.Nome_Sala,1,30) as Sala from dados_pessoais,Salas_Evento');
  SQL.Add('select left(dados_pessoais.Nome,50) as Nome,Left(dados_pessoais.Sobrenome,50) as Sobrenome,Left(salas_evento.Nome_Sala,30) as Sala from dados_pessoais,Salas_Evento');
  SQL.Add('where dados_pessoais.sala_treinamento=salas_evento.código');
  SQL.Add('and dados_pessoais.nome like' +  QuotedStr (Edit1.Text + '%'));
  Active := True
  end;

end;

end.
