unit U_Konversi_Keabuan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, StdCtrls, ExtCtrls;

type
  TFormKonversiKeabuan = class(TForm)
    ImageSumber: TImage;
    ImageKonversi: TImage;
    btnAmbil: TButton;
    OpenPictureDialog: TOpenPictureDialog;
    btnKonversi: TButton;
    ImageNegatif: TImage;
    btnNegatif: TButton;
    procedure btnAmbilClick(Sender: TObject);
    procedure btnKonversiClick(Sender: TObject);
    procedure btnNegatifClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKonversiKeabuan: TFormKonversiKeabuan;

implementation

{$R *.dfm}

procedure TFormKonversiKeabuan.btnAmbilClick(Sender: TObject);
begin
     if OpenPictureDialog.Execute then

      begin
        ImageSumber.Picture.LoadFromFile(OpenPictureDialog.FileName);
        ClientHeight := ImageSumber.Picture.Height;
        ClientWidth := ImageSumber.Picture.Width;
      end;
end;

procedure TFormKonversiKeabuan.btnKonversiClick(Sender: TObject);
var
  baris, kolom : integer;
  warna : Longint;
  R,G,B, Intensitas : Byte;
begin
 // btnKonversi.Enabled:=false;
  ImageKonversi.Picture.Bitmap:=ImageSumber.Picture.Bitmap;

  for kolom := 0 to ImageSumber.Picture.Bitmap.Height - 1 do
    begin
      for baris := 0 to ImageSumber.Picture.Bitmap.Width - 1 do
        begin
          warna := ColorToRGB(ImageKonversi.Picture.Bitmap.Canvas.Pixels[baris,kolom]);

          R := GetRValue(warna);
          G := GetGValue(warna);
          B := GetBValue(warna);
          Intensitas := (R+G+B) div 3;

          ImageKonversi.Picture.Bitmap.Canvas.Pixels[baris,kolom] := RGB(intensitas,intensitas,intensitas);
        end;
    end;
end;

procedure TFormKonversiKeabuan.btnNegatifClick(Sender: TObject);
var
  baris2,kolom2 : integer;
  warna2 :Longint;
  R2,G2,B2, Intensitas2 : Byte;
begin
  ImageNegatif.Picture.Bitmap:=ImageSumber.Picture.Bitmap;

  for kolom2 := 0 to ImageSumber.Picture.Bitmap.Height - 1 do
    begin
      for baris2 := 0 to ImageSumber.Picture.Bitmap.Width - 1 do
      begin
        warna2 := ColorToRGB(ImageNegatif.Picture.Bitmap.Canvas.Pixels[baris2,kolom2]);
        R2 := GetRValue(warna2);
        G2 := GetGValue(warna2);
        B2 := GetBValue(warna2);
        Intensitas2 := (R2+G2+B2) div 3;

        Intensitas2 := 255 - Intensitas2;
        ImageNegatif.Picture.Bitmap.Canvas.Pixels[baris2,kolom2] := RGB(intensitas2,intensitas2,intensitas2);
      end;

    end;

end;

end.
