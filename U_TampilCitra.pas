unit U_TampilCitra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, ExtDlgs;

type
  TF_TampilCitra = class(TForm)
    PanelAtas: TPanel;
    ButtonAmbilCitra: TButton;
    StatusBar: TStatusBar;
    OpenPictureDialog: TOpenPictureDialog;
    procedure ButtonAmbilCitraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_TampilCitra: TF_TampilCitra;

implementation

uses U_FormCitra;

{$R *.dfm}

procedure TF_TampilCitra.ButtonAmbilCitraClick(Sender: TObject);
var
  fc : string;
begin
  if OpenPictureDialog.Execute then
    begin
      if F_Citra = nil then
      Application.CreateForm(TF_Citra, F_Citra);

      with F_Citra do
      begin
        Image.Picture.LoadFromFile(OpenPictureDialog.FileName);
        ClientHeight := Image.Picture.Height;
        ClientWidth := Image.Picture.Width;
      end;

      case F_Citra.Image.Picture.Bitmap.PixelFormat of
        pf1bit : fc := 'biner';
        pf8bit : fc := 'keabuan';
        pf24bit : fc := 'true color';
      end;

      StatusBar.SimpleText := OpenPictureDialog.FileName +
      ' ( ' + IntToStr(F_Citra.Image.Picture.Width)
      + ' x ' +IntToStr(F_Citra.Image.Picture.Height)
      + ' , ' + fc + ' ) ';
    end;
end;

end.
