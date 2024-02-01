unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage;

type
  TForm8 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    ADOTable1MarkaAdi: TWideStringField;
    ADOTable2Tarih: TDateTimeField;
    ADOTable2Model: TWideStringField;
    ADOTable2UrunMiktari: TWideStringField;
    ADOTable2UrunFiyati: TWideStringField;
    Image1: TImage;
    ADOTable1SiparisNo: TIntegerField;
    ADOTable2SiparisNo: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation
uses Unit6;
{$R *.dfm}

end.
