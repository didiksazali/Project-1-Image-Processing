object FormImageBlending: TFormImageBlending
  Left = 0
  Top = 0
  Caption = 'F_ImageBlending'
  ClientHeight = 416
  ClientWidth = 737
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 737
    Height = 65
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 224
      Top = 26
      Width = 15
      Height = 13
      Caption = 'wA'
    end
    object Label2: TLabel
      Left = 368
      Top = 26
      Width = 14
      Height = 13
      Caption = 'wB'
    end
    object Button1: TButton
      Left = 32
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Ambil Citra 1'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 136
      Top = 21
      Width = 75
      Height = 25
      Caption = 'ambil Citra 2'
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 256
      Top = 23
      Width = 89
      Height = 21
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 400
      Top = 23
      Width = 97
      Height = 21
      TabOrder = 3
    end
    object Button3: TButton
      Left = 536
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Blending'
      TabOrder = 4
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 648
    Top = 16
  end
end
