object FormKonversiKeabuan: TFormKonversiKeabuan
  Left = 0
  Top = 0
  Caption = 'Konversi Keabuan'
  ClientHeight = 302
  ClientWidth = 693
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ImageSumber: TImage
    Left = 80
    Top = 120
    Width = 105
    Height = 105
    AutoSize = True
    Center = True
  end
  object ImageKonversi: TImage
    Left = 288
    Top = 120
    Width = 105
    Height = 105
    AutoSize = True
    Center = True
  end
  object ImageNegatif: TImage
    Left = 496
    Top = 120
    Width = 105
    Height = 105
  end
  object btnAmbil: TButton
    Left = 94
    Top = 247
    Width = 75
    Height = 25
    Caption = 'Ambil'
    TabOrder = 0
    OnClick = btnAmbilClick
  end
  object btnKonversi: TButton
    Left = 304
    Top = 247
    Width = 75
    Height = 25
    Caption = 'Konversi'
    TabOrder = 1
    OnClick = btnKonversiClick
  end
  object btnNegatif: TButton
    Left = 512
    Top = 247
    Width = 75
    Height = 25
    Caption = 'Negatif'
    TabOrder = 2
    OnClick = btnNegatifClick
  end
  object OpenPictureDialog: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 328
    Top = 40
  end
end
