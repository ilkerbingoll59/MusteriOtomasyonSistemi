unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  TForm3 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    ADOTable1: TADOTable;
    ADOTable1Username: TWideStringField;
    ADOTable1Password: TWideStringField;
    ADOTable1Kimlik: TAutoIncField;
    ADOTable1Name: TWideStringField;
    ADOTable1Surname: TWideStringField;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Image1: TImage;
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
uses unit1;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
if dbedit4.Text=dbedit5.Text then
begin
   showmessage('Kayýt oldunuz');
   adotable1.Append;
   form3.Hide;
   form1.Show;
end
else
begin
  showmessage('Þifreler Uyuþmuyor');
  dbedit4.Text:='';
  dbedit5.Text:='';
end;
end;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked=True then
begin
  dbedit4.PasswordChar:=#0;
  dbedit5.PasswordChar := #0;
end
else
begin
  dbedit4.PasswordChar:='*';
  dbedit5.PasswordChar:='*';
end;
end;

end.
