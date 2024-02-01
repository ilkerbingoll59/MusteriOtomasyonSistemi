unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Button2: TButton;
    ADOTable1Username: TWideStringField;
    ADOTable1Password: TWideStringField;
    ADOTable1Kimlik: TAutoIncField;
    ADOTable1Name: TWideStringField;
    ADOTable1Surname: TWideStringField;
    CheckBox1: TCheckBox;
    Image1: TImage;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation
uses unit2,unit3, Unit6;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
Username, Password: string;
begin
   AdoTable1.Refresh;
   adotable1.Open;

   Username:=edit1.Text;
   Password:=edit2.Text;
   if adotable1.Locate('Username',Username,[] )=True then
   begin
     if adotable1['Password']=Password then
     begin
       form6.show;
       form1.Hide;
     end
     else
     begin
       showmessage('Þifreyi yanlýþ girdiniz.');
     end;

   end
     else
     begin
       showmessage('Kullanýcý adý veya þifre yanlýþ.');
     end;

   end;
procedure TForm1.Button2Click(Sender: TObject);
begin
adotable1.Append;
form3.show;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);

begin
if CheckBox1.Checked=True then
begin
  edit2.PasswordChar:=#0;
end
else
begin
  edit2.PasswordChar:='*';
end;

end;

end.
