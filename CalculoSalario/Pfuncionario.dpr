program Pfuncionario;

uses
  Forms,
  Ufuncionario in 'Ufuncionario.pas' {Form1},
  Usobre in 'Usobre.pas' {Form2};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
