object F_TampilCitra: TF_TampilCitra
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'PenampilCitra'
  ClientHeight = 394
  ClientWidth = 711
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PanelAtas: TPanel
    Left = 0
    Top = 0
    Width = 711
    Height = 65
    Align = alTop
    TabOrder = 0
    object ButtonAmbilCitra: TButton
      Left = 40
      Top = 13
      Width = 129
      Height = 41
      Caption = 'Ambil Citra'
      TabOrder = 0
      OnClick = ButtonAmbilCitraClick
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 375
    Width = 711
    Height = 19
    Panels = <>
    SimplePanel = True
    ExplicitTop = 438
  end
  object OpenPictureDialog: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 632
    Top = 16
  end
end
