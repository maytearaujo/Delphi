unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    procedure Entra_Num(Sender: TObject);
    procedure Entra_OP(Sender: TObject);
    procedure Calcular(Sender: TObject);
    procedure Limpar_visor(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  V1,V2: Real;
  OP   : Byte;

implementation

{$R *.DFM}

procedure TForm1.Entra_Num(Sender: TObject);
begin
if (ActiveControl.Tag = 11)
   then Edit1.Text:=Edit1.Text + ','
   else Edit1.Text:=Edit1.Text + IntToStr(ActiveControl.Tag);
end;

procedure TForm1.Entra_OP(Sender: TObject);
begin
V1:=StrToFloat(Edit1.Text);
OP:=ActiveControl.Tag;
Edit1.Text:='';
end;

procedure TForm1.Calcular(Sender: TObject);

var R : Real;

begin
V2:=StrToFloat(Edit1.Text);
case op of
  12 : R:=V1+V2;
  13 : R:=V1-V2;
  14 : R:=V1*V2;
  15 : R:=V1/V2;
end;
Edit1.Text:=FloatToStr(R);
end;

procedure TForm1.Limpar_visor(Sender: TObject);
begin
Edit1.Text:='';
end;

end.
