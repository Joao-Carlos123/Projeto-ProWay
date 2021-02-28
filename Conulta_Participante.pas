unit Conulta_Participante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ADODB, StdCtrls;

type
  TConsulta_Participantes = class(TForm)
    Edit1: TEdit;
    adoConusltaParticipante: TADOConnection;
    adoConPart: TADOTable;
    ADOQuery1: TADOQuery;
    DataSourceConPart: TDataSource;
    adoConPartCdigo: TAutoIncField;
    adoConPartNome: TWideStringField;
    adoConPartSobrenome: TWideStringField;
    adoConPartSala_Treinamento: TIntegerField;
    adoConPartSala_Intervalo: TIntegerField;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    ADOQuery1Cdigo: TAutoIncField;
    ADOQuery1Nome: TWideStringField;
    ADOQuery1Sobrenome: TWideStringField;
    ADOQuery1Sala_Treinamento: TIntegerField;
    ADOQuery1Sala_Intervalo: TIntegerField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Consulta_Participantes: TConsulta_Participantes;

implementation

{$R *.dfm}

procedure TConsulta_Participantes.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TConsulta_Participantes.Button1Click(Sender: TObject);
begin
  {ADOQuery1.SQL.Clear;
  ADOQuery1.Close;
  ADOQuery1.Parameters.ParamByName('pnome').Value := Edit1.Text + '%';
  ADOQuery1.Open;}
  with ADOQuery1 do
  begin
  Active := False;
  SQL.Clear;
  SQL.Add('select * from Dados_Pessoais');
  SQL.Add('where nome like' + QuotedStr (Edit1.Text + '%'));
  Active := True
  end;
end;

end.
