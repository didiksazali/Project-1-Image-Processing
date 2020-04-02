unit U_CobaInduk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ExtDlgs, ComCtrls;

type
  TF_CobaInduk = class(TForm)
    btnFormAnak: TButton;
    panelInduk: TPanel;
    OpenPictureDialog1: TOpenPictureDialog;
    btnGambar: TButton;
    StatusBar1: TStatusBar;
    Image1: TImage;
    Image2: TImage;

    procedure btnFormAnakClick(Sender: TObject);
    procedure btnGambarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CobaInduk: TF_CobaInduk;

implementation

uses U_CobaAnak;

{$R *.dfm}



procedure TF_CobaInduk.btnFormAnakClick(Sender: TObject);
begin
Application.CreateForm(TF_CobaAnak, F_CobaAnak);
end;

procedure TF_CobaInduk.btnGambarClick(Sender: TObject);
begin
if OpenPictureDialog1.Execute() then
    begin
        Image1.Picture.Bitmap.LoadFromFile(OpenPictureDialog1.FileName);
        Image2.Picture := Image1.Picture;
//        Application.CreateForm(TF_CobaAnak, F_CobaAnak);
//        F_CobaAnak.Image2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
//
//        F_CobaAnak.Image2.Left := F_CobaAnak.Left;
//        F_CobaAnak.Image2.Top := F_CobaAnak.Top;
//
//        F_CobaAnak.ClientHeight := F_CobaAnak.Image2.Picture.Height;
//        F_CobaAnak.ClientWidth := F_CobaAnak.Image2.Picture.Width;

    end;

end;

end.

