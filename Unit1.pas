unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  baris,kolom:integer;
  warna:Longint;
  R,G,B:Byte;
begin
  baris:=image1.Picture.Bitmap.Height;
  kolom:=image1.Picture.Bitmap.Width;

  Stringgrid1.RowCount:=baris;
  Stringgrid1.ColCount:=kolom;

  for kolom := 0 to kolom-1 do
    begin
      for baris := 0 to baris-1 do
        begin
          warna:=ColorToRGB(Image1.Picture.Bitmap.Canvas.Pixels[kolom,baris]);
          R:=GetRValue(warna);
          G:=GetGValue(warna);
          B:=GetBValue(warna);
          StringGrid1.Cells[kolom,baris]:= inttostr(R)+','+inttostr(G)+','+inttostr(B);
        //  inttostr(kolom)+','+inttostr(baris);
        end;
    end;

end;

end.
