unit Ufuncionario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Menus;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    RadioGroup1: TRadioGroup;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    GroupBox2: TGroupBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    MainMenu1: TMainMenu;
    Aplicativo1: TMenuItem;
    Calcular1: TMenuItem;
    Limpar1: TMenuItem;
    Sair1: TMenuItem;
    Sobre1: TMenuItem;
    Programa1: TMenuItem;
    PopupMenu1: TPopupMenu;
    Calcular2: TMenuItem;
    N1: TMenuItem;
    Limpar2: TMenuItem;
    N2: TMenuItem;
    Sobre2: TMenuItem;
    N3: TMenuItem;
    Programa2: TMenuItem;
    Sair2: TMenuItem;
    procedure Programa1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

Var A,B,SB,SL,IR:real;
  
implementation

uses Usobre;

{$R *.DFM}

procedure TForm1.Programa1Click(Sender: TObject);
begin
     form2.showmodal;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
Const
 CAM = 'C:\Arquivos de Programas\Arquivos comuns\Borland Shared\Images\Buttons\';

begin
  BitBtn3.Glyph.LoadFromFile( CAM+'DoorShut.bmp' );
  If MessageDlgPos( 'Certeza',mtConfirmation,[mbYes,mbNo],0,320,280)=mrYes Then
    Application.Terminate
  Else
    BitBtn3.Glyph.LoadFromFile( CAM+'DoorOpen.bmp' );

end;
procedure TForm1.BitBtn2Click(Sender: TObject);
begin
      Edit1.Text:='';
      Edit2.Text:='';
      Edit3.Text:='';
      Edit4.Text:='';
      Edit5.Text:='';
      Edit6.Text:='';
      Edit1.SETFOCUS;
      combobox1.text:='Classe';
      RadioGroup1.ItemIndex := -1;

end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  If Not (Key In ['A'..'Z','a'..'z',#32,#8]) Then
    Begin
         messagebeep(MB_ICONHAND);
         Key := #0;
    End;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
      If Not (Key In ['0'..'9',',','.',#32,#8]) Then
    Begin
         messagebeep(MB_ICONHAND);
         Key := #0;
    End;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  If RadioGroup1.ItemIndex = -1 Then
    MessageDlg('Preencher campo SEXO',mtWarning,[mbOk],0 )
  Else
    If Edit1.Text = '' Then
      Begin
        MessageDlg('Preencher campo NOME',mtWarning,[mbOk],0 );
        Edit1.SetFocus;
      End
    Else
      If Edit2.Text = '' Then
      Begin
        MessageDlg('Preencher campo VALOR DA HORA',mtWarning,[mbOk],0 );
        Edit2.SetFocus;
      End
    Else
      If Edit3.Text = '' Then
      Begin
        MessageDlg('Preencher campo Quantidade',mtWarning,[mbOk],0 );
        Edit3.SetFocus;
      end
    Else
      Begin
        A:=strtofloat(Edit2.Text);
        B:=strtofloat(Edit3.Text);
        SB:=A*B;
        If (ComboBox1.ItemIndex =1)and (radiogroup1.itemindex=0)then
          SB:=SB* 1.05;

        If (ComboBox1.Itemindex=2)and(radiogroup1.itemindex=0) then
          SB:=SB* 1.02;

        IF (combobox1.itemindex=3)and (radiogroup1.itemindex=0) then
          SB:=SB* 1.18;

        //verifica a porcentagem do imposto de renda!
        IF (SB <=1800) Then
         Label5.Caption:='IRRF''0%';

        IF (SB >1800) and (SB<=2135) Then
         Label5.Caption:='IRRF''''15%';

         IF (SB>2135) Then
         Label5.Caption:='IRRF''''27.5%';

        If RadioGroup1.ItemIndex = 1 Then
         SB:=SB* 1.2;


        SL:=SB-IR;
        //Saida de dados

        Edit4.Text:=FloatToStr(SB);
        Edit5.Text:=FloatToStr(IR);
        Edit6.Text:=FloatToStr(SL);
        groupbox2.caption:=Edit1.Text;
      end;
end;
end.
