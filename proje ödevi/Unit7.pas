unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.WinXPickers, Vcl.Imaging.pngimage;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DatePicker1: TDatePicker;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure DatePicker1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation
uses unit4,unit6,unit2;
{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
Form2.adotable1.Append;
Form2.ADOTable1.Refresh;
form4.Show;
end;



procedure TForm7.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
dbedit8.Text := datetostr(DatePicker1.Date);
end;

procedure TForm7.DatePicker1Change(Sender: TObject);
begin
dbedit8.Text := datetostr(DatePicker1.Date);
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
DatePicker1.Date := Now;
end;

end.
