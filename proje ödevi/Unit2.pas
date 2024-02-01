unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.WinXPickers, Vcl.Imaging.pngimage;

type
  TForm2 = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1Kimlik: TAutoIncField;
    ADOTable1MusteriAdi: TWideStringField;
    ADOTable1MusteriSoyadi: TWideStringField;
    ADOTable1TelefonNumarasi: TWideStringField;
    ADOTable1Ariza: TWideStringField;
    ADOTable1IMEINumarasi: TWideStringField;
    ADOTable1YapilmaTarihi: TDateTimeField;
    ADOTable1CihazSeriNumarasi: TWideStringField;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    Ekle: TButton;
    DBEdit10: TDBEdit;
    ADOTable1CihazDurumu: TWideStringField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    ADOConnection1: TADOConnection;
    ADOTable1Ucreti: TWideStringField;
    ADOTable1CihazMarkasi: TWideStringField;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Image1: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure EkleClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form2: TForm2;

implementation
uses unit1,unit4,unit6,unit7;

{$R *.dfm}

procedure TForm2.ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
if(AnsiUpperCase(Form4.Edit1.Text) = Copy(AnsiUpperCase(ADOTable1.FieldByName('Musteri Adi').AsString),1,length(Form4.Edit1.Text)))
  AND (AnsiUpperCase(Form4.Edit2.Text) = Copy(AnsiUpperCase(ADOTable1.FieldByName('Musteri Soyadi').AsString),1,length(Form4.Edit2.Text)))
  AND (AnsiUpperCase(Form4.Edit3.Text) = Copy(AnsiUpperCase(ADOTable1.FieldByName('Cihaz Markasi').AsString),1,length(Form4.Edit3.Text)))
  AND (AnsiUpperCase(Form4.Edit4.Text) = Copy(AnsiUpperCase(ADOTable1.FieldByName('Cihaz Seri Numarasi').AsString),1,length(Form4.Edit4.Text))) then
  Accept := True
  else
  Accept := False;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
adotable1.Edit;
adotable1.Delete;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
form4.Show;
end;


procedure TForm2.EkleClick(Sender: TObject);
begin
adotable1.Append;
Form4.Show;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.


