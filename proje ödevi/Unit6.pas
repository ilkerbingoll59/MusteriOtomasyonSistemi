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
Form4.DBGrid1.Columns[0].Title.Caption := 'MÜÞTERÝ ADI';
Form4.DBGrid1.Columns[1].Title.Caption := 'MÜÞTERÝ SOYADI';
Form4.DBGrid1.Columns[2].Title.Caption := 'TELEFON NUMARASI';
Form4.DBGrid1.Columns[3].Title.Caption := 'TELEFON MARKASI';
Form4.DBGrid1.Columns[4].Title.Caption := 'TELEFON ARIZASI';
Form4.DBGrid1.Columns[5].Title.Caption := 'IMEI NUMARASI';
Form4.DBGrid1.Columns[6].Title.Caption := 'CÝHAZ SERÝ NUMARASI';
Form4.DBGrid1.Columns[7].Title.Caption := 'YAPILMA TARÝHÝ';
Form4.DBGrid1.Columns[8].Title.Caption := 'ÜCRETÝ';
Form4.DBGrid1.Columns[9].Title.Caption := 'CÝHAZ DURUMU';
Form2.adotable1.Append;
Form7.Show;
end;

procedure TForm6.SpeedButton2Click(Sender: TObject);
begin
Form4.DBGrid1.Columns[0].Title.Caption := 'MÜÞTERÝ ADI';
Form4.DBGrid1.Columns[1].Title.Caption := 'MÜÞTERÝ SOYADI';
Form4.DBGrid1.Columns[2].Title.Caption := 'TELEFON NUMARASI';
Form4.DBGrid1.Columns[3].Title.Caption := 'TELEFON MARKASI';
Form4.DBGrid1.Columns[4].Title.Caption := 'TELEFON ARIZASI';
Form4.DBGrid1.Columns[5].Title.Caption := 'IMEI NUMARASI';
Form4.DBGrid1.Columns[6].Title.Caption := 'CÝHAZ SERÝ NUMARASI';
Form4.DBGrid1.Columns[7].Title.Caption := 'YAPILMA TARÝHÝ';
Form4.DBGrid1.Columns[8].Title.Caption := 'ÜCRETÝ';
Form4.DBGrid1.Columns[9].Title.Caption := 'CÝHAZ DURUMU';
Form2.adotable1.Append;
Form4.Show;
end;

procedure TForm6.SpeedButton3Click(Sender: TObject);
begin
Form4.DBGrid1.Columns[0].Title.Caption := 'MÜÞTERÝ ADI';
Form4.DBGrid1.Columns[1].Title.Caption := 'MÜÞTERÝ SOYADI';
Form4.DBGrid1.Columns[2].Title.Caption := 'TELEFON NUMARASI';
Form4.DBGrid1.Columns[3].Title.Caption := 'TELEFON MARKASI';
Form4.DBGrid1.Columns[4].Title.Caption := 'TELEFON ARIZASI';
Form4.DBGrid1.Columns[5].Title.Caption := 'IMEI NUMARASI';
Form4.DBGrid1.Columns[6].Title.Caption := 'CÝHAZ SERÝ NUMARASI';
Form4.DBGrid1.Columns[7].Title.Caption := 'YAPILMA TARÝHÝ';
Form4.DBGrid1.Columns[8].Title.Caption := 'ÜCRETÝ';
Form4.DBGrid1.Columns[9].Title.Caption := 'CÝHAZ DURUMU';
Form2.Show;
end;

procedure TForm6.SpeedButton4Click(Sender: TObject);
begin
if (MessageDlg('Çýkmak istiyor musunuz?', mtConfirmation, [mbYes, mbNo], 0)= mrYes) then
Application.Terminate;
end;



procedure TForm6.SpeedButton5Click(Sender: TObject);
begin
Form8.DBGrid1.Columns[0].Title.Caption := 'SÝPARÝÞ NO';
Form8.DBGrid1.Columns[1].Title.Caption := 'TELEFON MARKASI';
Form8.DBGrid2.Columns[0].Title.Caption := 'SÝPARÝÞ NO';
Form8.DBGrid2.Columns[1].Title.Caption := 'TARÝH';
Form8.DBGrid2.Columns[2].Title.Caption := 'TELEFON MODELÝ';
Form8.DBGrid2.Columns[3].Title.Caption := 'STOK ADEDÝ';
Form8.DBGrid2.Columns[4].Title.Caption := 'ÜRÜN FÝYATI';
Form8.Show;
Form8.adotable2.Append;
Form8.adotable1.Append;
end;

end.
