unit UCalculadora;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox2: TGroupBox;
    Edit3: TEdit;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    MainMenu1: TMainMenu;
    Aplicativo1: TMenuItem;
    Limpar1: TMenuItem;
    Sair1: TMenuItem;
    Operaes1: TMenuItem;
    DivisoCtrlD1: TMenuItem;
    MultiplicaoCtrlM1: TMenuItem;
    SubtraoCtrlS1: TMenuItem;
    AdioCtrlA1: TMenuItem;
    Sobre1: TMenuItem;
    Autor1: TMenuItem;
    Aplicativo2: TMenuItem;
    Limpar2: TMenuItem;
    sair2: TMenuItem;
    Sair3: TMenuItem;
    D1: TMenuItem;
    M1: TMenuItem;
    A1: TMenuItem;
    A2: TMenuItem;
    Sobre2: TMenuItem;
    Aplicativo3: TMenuItem;
    Aplicativo4: TMenuItem;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Autor1Click(Sender: TObject);
    procedure Aplicativo2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Uautor, Uaplicativo;

{$R *.DFM}
{======================================}
procedure TForm1.SpeedButton1Click(Sender: TObject);
Var
  X : TSpeedButton;
  M : TMenuItem;
  OP : Integer;
  A,B : Integer;
  C : Real;

begin
 If Sender.ClassName='TSpeedButton' Then
   Begin
     X := Sender as TSpeedButton;
     OP := X.Tag;
   End
 Else
   Begin
     M := Sender as TMenuItem;
     OP := M.Tag;
   End;

 If (Edit1.Text = '') Or (Edit2.Text = '') Then
    Begin
      ShowMessage( 'Preencher Campos!' );
      If Edit2.Text = '' Then Edit2.SetFocus;
      If Edit1.Text = '' Then Edit1.SetFocus;
    End
  Else
    Begin
      A := StrToInt(Edit1.Text);
      B := StrToInt(Edit2.Text);

      Case OP Of
        1 : C := A*B;
        2 : C := A/B;
        3 : C := A+B;
        Else
          C := A-B;  
      End;
      Edit3.Text := FloatToStr(C);
    End;
end;
{======================================}
procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit1.SetFocus;
end;
{======================================}
procedure TForm1.BitBtn2Click(Sender: TObject);
Const
 CAM = 'C:\Arquivos de Programas\Arquivos comuns\Borland Shared\Images\Buttons\';

begin
  BitBtn2.Glyph.LoadFromFile( CAM+'DoorShut.bmp' );
  If MessageDlgPos( 'Certeza',mtConfirmation,[mbYes,mbNo],0,320,280)=mrYes Then
    Application.Terminate
  Else
    BitBtn2.Glyph.LoadFromFile( CAM+'DoorOpen.bmp' );

end;
{======================================}
procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 If Not (Key In ['0'..'9',#8]) Then
    Begin
         Key := #0;
    End;
end;
 {procedure TForm1.Sobre1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.Autor1Click(Sender: TObject);
begin
   form2.showmodal;
end;

procedure TForm1.projeto1Click(Sender: TObject);
begin
form2.Show;
end;
 }

 {==================================}
procedure TForm1.Autor1Click(Sender: TObject);
begin
    form2.showmodal;
end;
 {======================}

procedure TForm1.Aplicativo2Click(Sender: TObject);
begin
    form3.showmodal;
end;

end.
