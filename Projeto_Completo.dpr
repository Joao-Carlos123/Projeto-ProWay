program Projeto_Completo;

uses
  Forms,
  CADASTRO in 'CADASTRO.pas' {CadastrodeParticipantes},
  Menu_Principal in 'Menu_Principal.pas' {MenuPrincipal},
  Cadastro_Sala_Treinamento in 'Cadastro_Sala_Treinamento.pas' {SalaTreinamento},
  Cadastro_Sala_Cafe in 'Cadastro_Sala_Cafe.pas' {SalaCafe},
  Conulta_Participante in 'Conulta_Participante.pas' {Consulta_Participantes},
  Conulta_Sala_Treinamento in 'Conulta_Sala_Treinamento.pas' {Consulta_Sala_Treinamento},
  Consulta_Sala_de_Cafe in 'Consulta_Sala_de_Cafe.pas' {Consulta_Sala_Cafe};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMenuPrincipal, MenuPrincipal);
  Application.CreateForm(TCadastrodeParticipantes, CadastrodeParticipantes);
  Application.CreateForm(TSalaTreinamento, SalaTreinamento);
  Application.CreateForm(TSalaCafe, SalaCafe);
  Application.CreateForm(TConsulta_Participantes, Consulta_Participantes);
  Application.CreateForm(TConsulta_Sala_Treinamento, Consulta_Sala_Treinamento);
  Application.CreateForm(TConsulta_Sala_Cafe, Consulta_Sala_Cafe);
  Application.Run;
end.
