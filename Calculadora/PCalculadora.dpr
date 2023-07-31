program PCalculadora;

uses
  Forms,
  UCalculadora in 'UCalculadora.pas' {Form1},
  Uautor in 'Uautor.pas' {Form2},
  Uaplicativo in 'Uaplicativo.pas' {Form3};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
