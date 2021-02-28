program Evento;

uses
  Forms,
  CADASTRO in 'CADASTRO.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Cadastro Evento';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
