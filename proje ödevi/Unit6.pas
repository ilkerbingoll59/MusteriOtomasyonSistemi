unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm6 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Image1: TImage;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation
uses unit2,unit1,unit4,unit7,unit8;
{$R *.dfm}

procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
Form4.DBGrid1.Columns[0].Title.Caption := 'M��TER� ADI';
Form4.DBGrid1.Columns[1].Title.Caption := 'M��TER� SOYADI';
Form4.DBGrid1.Columns[2].Title.Caption := 'TELEFON NUMARASI';
Form4.DBGrid1.Columns[3].Title.Caption := 'TELEFON MARKASI';
Form4.DBGrid1.Columns[4].Title.Caption := 'TELEFON ARIZASI';
Form4.DBGrid1.Columns[5].Title.Caption := 'IMEI NUMARASI';
Form4.DBGrid1.Columns[6].Title.Caption := 'C�HAZ SER� NUMARASI';
Form4.DBGrid1.Columns[7].Title.Caption := 'YAPILMA TAR�H�';
Form4.DBGrid1.Columns[8].Title.Caption := '�CRET�';
Form4.DBGrid1.Columns[9].Title.Caption := 'C�HAZ DURUMU';
Form2.adotable1.Append;
Form7.Show;
end;

procedure TForm6.SpeedButton2Click(Sender: TObject);
begin
Form4.DBGrid1.Columns[0].Title.Caption := 'M��TER� ADI';
Form4.DBGrid1.Columns[1].Title.Caption := 'M��TER� SOYADI';
Form4.DBGrid1.Columns[2].Title.Caption := 'TELEFON NUMARASI';
Form4.DBGrid1.Columns[3].Title.Caption := 'TELEFON MARKASI';
Form4.DBGrid1.Columns[4].Title.Caption := 'TELEFON ARIZASI';
Form4.DBGrid1.Columns[5].Title.Caption := 'IMEI NUMARASI';
Form4.DBGrid1.Columns[6].Title.Caption := 'C�HAZ SER� NUMARASI';
Form4.DBGrid1.Columns[7].Title.Caption := 'YAPILMA TAR�H�';
Form4.DBGrid1.Columns[8].Title.Caption := '�CRET�';
Form4.DBGrid1.Columns[9].Title.Caption := 'C�HAZ DURUMU';
Form2.adotable1.Append;
Form4.Show;
end;

procedure TForm6.SpeedButton3Click(Sender: TObject);
begin
Form4.DBGrid1.Columns[0].Title.Caption := 'M��TER� ADI';
Form4.DBGrid1.Columns[1].Title.Caption := 'M��TER� SOYADI';
Form4.DBGrid1.Columns[2].Title.Caption := 'TELEFON NUMARASI';
Form4.DBGrid1.Columns[3].Title.Caption := 'TELEFON MARKASI';
Form4.DBGrid1.Columns[4].Title.Caption := 'TELEFON ARIZASI';
Form4.DBGrid1.Columns[5].Title.Caption := 'IMEI NUMARASI';
Form4.DBGrid1.Columns[6].Title.Caption := 'C�HAZ SER� NUMARASI';
Form4.DBGrid1.Columns[7].Title.Caption := 'YAPILMA TAR�H�';
Form4.DBGrid1.Columns[8].Title.Caption := '�CRET�';
Form4.DBGrid1.Columns[9].Title.Caption := 'C�HAZ DURUMU';
Form2.Show;
end;

procedure TForm6.SpeedButton4Click(Sender: TObject);
begin
if (MessageDlg('��kmak istiyor musunuz?', mtConfirmation, [mbYes, mbNo], 0)= mrYes) then
Application.Terminate;
end;



procedure TForm6.SpeedButton5Click(Sender: TObject);
begin
Form8.DBGrid1.Columns[0].Title.Caption := 'S�PAR�� NO';
Form8.DBGrid1.Columns[1].Title.Caption := 'TELEFON MARKASI';
Form8.DBGrid2.Columns[0].Title.Caption := 'S�PAR�� NO';
Form8.DBGrid2.Columns[1].Title.Caption := 'TAR�H';
Form8.DBGrid2.Columns[2].Title.Caption := 'TELEFON MODEL�';
Form8.DBGrid2.Columns[3].Title.Caption := 'STOK ADED�';
Form8.DBGrid2.Columns[4].Title.Caption := '�R�N F�YATI';
Form8.Show;
Form8.adotable2.Append;
Form8.adotable1.Append;
end;

end.
