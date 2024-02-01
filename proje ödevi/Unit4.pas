unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    a: TWideStringField;
    ADOTable1MusteriSoyadi: TWideStringField;
    ADOTable1TelefonNumarasi: TWideStringField;
    ADOTable1Ariza: TWideStringField;
    ADOTable1IMEINumarasi: TWideStringField;
    ADOTable1YapilmaTarihi: TDateTimeField;
    ADOTable1CihazSeriNumarasi: TWideStringField;
    ADOTable1CihazDurumu: TWideStringField;
    ADOTable1Kimlik: TAutoIncField;
    ADOTable1CihazMarkasi: TWideStringField;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton3: TSpeedButton;
    ADOTable1Ucreti: TWideStringField;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Image4: TImage;
    Label6: TLabel;
    Edit4: TEdit;
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
Form4: TForm4;
implementation
uses unit1,unit2,unit6,unit7;

{$R *.dfm}

procedure TForm4.Edit2Change(Sender: TObject);
begin
   Form2.ADOTable1.Filtered := False;
  if (Edit2.Text <> '') then Form2.ADOTable1.Filtered := True
  else Form2.ADOTable1.Filtered := False;
end;

procedure TForm4.Edit3Change(Sender: TObject);
begin
    Form2.ADOTable1.Filtered := False;
  if (Edit3.Text <> '') then Form2.ADOTable1.Filtered := True
  else Form2.ADOTable1.Filtered := False;
end;


procedure TForm4.Edit4Change(Sender: TObject);
begin
  Form2.ADOTable1.Filtered := False;
  if (Edit4.Text <> '') then Form2.ADOTable1.Filtered := True
  else Form2.ADOTable1.Filtered := False;
end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
begin
Form2.Hide;
Form7.hide;
Form4.Hide;
Form6.Show;
end;



procedure TForm4.SpeedButton5Click(Sender: TObject);
begin
if (MessageDlg('Seçilen kaydý silmek istiyor musunuz?', mtConfirmation, [mbYes, mbNo], 0)= mrYes) then
Form2.ADOTable1.Delete;
end;

procedure TForm4.SpeedButton6Click(Sender: TObject);
begin
Form2.Show;
Form4.Hide;
end;

procedure TForm4.SpeedButton7Click(Sender: TObject);
begin
winExec('c:\Windows\System32\calc.exe',SW_SHOW);
end;

procedure TForm4.Edit1Change(Sender: TObject);
begin
  Form2.ADOTable1.Filtered := False;
  if (Edit1.Text <> '') then Form2.ADOTable1.Filtered := True
  else Form2.ADOTable1.Filtered := False;
end;


end.
