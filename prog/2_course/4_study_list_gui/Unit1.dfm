object Form1: TForm1
  Left = 190
  Top = 104
  Width = 258
  Height = 356
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 208
    Top = 48
    Width = 2
    Height = 73
  end
  object Bevel3: TBevel
    Left = 216
    Top = 48
    Width = 2
    Height = 73
  end
  object Bevel4: TBevel
    Left = 224
    Top = 48
    Width = 2
    Height = 73
  end
  object Bevel5: TBevel
    Left = 232
    Top = 48
    Width = 2
    Height = 73
  end
  object Bevel1: TBevel
    Left = 200
    Top = 40
    Width = 41
    Height = 89
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Test'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 40
    Width = 185
    Height = 281
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 88
    Top = 8
    Width = 75
    Height = 25
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkCancel
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 8
    Width = 75
    Height = 25
    TabOrder = 3
    OnClick = BitBtn2Click
    Kind = bkClose
  end
end
