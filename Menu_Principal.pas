unit Menu_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TMenuPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Participantes1: TMenuItem;
    SaladeTreinamento1: TMenuItem;
    SaladeCaf1: TMenuItem;
    Consulta1: TMenuItem;
    SalasdeTreinamento1: TMenuItem;
    SalasdeCaf1: TMenuItem;
    SalaTreinamento1: TMenuItem;
    Sair1: TMenuItem;
    procedure SaladeTreinamento1Click(Sender: TObject);
    procedure Participantes1Click(Sender: TObject);
    procedure SaladeCaf1Click(Sender: TObject);
    procedure SalasdeTreinamento1Click(Sender: TObject);
    procedure SalaTreinamento1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure SalasdeCaf1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuPrincipal: TMenuPrincipal;

implementation

uses Cadastro_Sala_Treinamento, CADASTRO, Cadastro_Sala_Cafe,
  Conulta_Participante, Conulta_Sala_Treinamento, Consulta_Sala_de_Cafe;

{$R *.dfm}

procedure TMenuPrincipal.SaladeTreinamento1Click(Sender: TObject);
begin
  SalaTreinamento.ShowModal;
end;

procedure TMenuPrincipal.Participantes1Click(Sender: TObject);
begin
  CadastrodeParticipantes.ShowModal;
end;

procedure TMenuPrincipal.SaladeCaf1Click(Sender: TObject);
begin
  SalaCafe.ShowModal;
end;

procedure TMenuPrincipal.SalasdeTreinamento1Click(Sender: TObject);
begin
  Consulta_Participantes.ShowModal;
end;

procedure TMenuPrincipal.SalaTreinamento1Click(Sender: TObject);
begin
  Consulta_Sala_Treinamento.ShowModal;
end;

procedure TMenuPrincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TMenuPrincipal.SalasdeCaf1Click(Sender: TObject);
begin
  Consulta_Sala_Cafe.ShowModal;  
end;

end.
