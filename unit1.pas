unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids,
  StdCtrls, ZConnection, ZDataset, db;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    email: TEdit;
    Kelas: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    NIS: TEdit;
    Nama: TEdit;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button3Click(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  zquery2.SQL.clear;
  try
    zquery2.SQL.add('insret into infosiswa  values("'+NIS.text+'","'+Nama.text+'","'+Kelas.text+'","'+Email.text+'","');
    zquery2.ExecSQL;
    showmessage('Berhasil. Berhasil. Berhasil Hore !!!');
  Except
    showmessage('Yah, gagal. coba lagi ya.Kegagalan adalah kunci keberhasilan :)');
  end;
  zquery2.refresh;    //Ayo jalankan
end;

end.

