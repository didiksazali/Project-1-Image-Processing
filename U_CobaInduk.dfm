object F_CobaInduk: TF_CobaInduk
  Left = 0
  Top = 0
  Caption = 'F_CobaInduk'
  ClientHeight = 331
  ClientWidth = 755
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 88
    Top = 112
    Width = 265
    Height = 161
    AutoSize = True
    Center = True
  end
  object Image2: TImage
    Left = 432
    Top = 128
    Width = 265
    Height = 129
  end
  object panelInduk: TPanel
    Left = 0
    Top = 0
    Width = 755
    Height = 57
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 447
    object btnFormAnak: TButton
      Left = 16
      Top = 17
      Width = 97
      Height = 25
      Caption = 'Lirik Form Anak'
      TabOrder = 0
      OnClick = btnFormAnakClick
    end
    object btnGambar: TButton
      Left = 152
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Gambar'
      TabOrder = 1
      OnClick = btnGambarClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 312
    Width = 755
    Height = 19
    Panels = <>
    ExplicitWidth = 447
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 376
    Top = 8
  end
end
