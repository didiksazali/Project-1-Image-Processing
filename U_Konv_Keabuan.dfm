object FormKonversiKeabuan: TFormKonversiKeabuan
  Left = 0
  Top = 0
  Caption = 'Konversi Keabuan'
  ClientHeight = 228
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ImageSumber: TImage
    Left = 80
    Top = 56
    Width = 105
    Height = 105
    AutoSize = True
    Center = True
  end
  object ImageKonversi: TImage
    Left = 256
    Top = 56
    Width = 105
    Height = 105
    AutoSize = True
    Center = True
  end
  object ButtonProses: TButton
    Left = 272
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Konversi'
    TabOrder = 0
    OnClick = ButtonProsesClick
  end
  object Button1: TButton
    Left = 96
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 1
  end
  object OpenPictureDialog: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 200
    Top = 8
  end
end
