object Form1: TForm1
  Left = 539
  Top = 195
  Width = 820
  Height = 640
  AlphaBlendValue = 100
  BorderIcons = []
  Caption = 'Super Paint Tomasza Pota'#324'skiego'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 144
    Top = 0
    Width = 657
    Height = 609
    OnMouseDown = Image1MouseDown
    OnMouseMove = Image1MouseMove
  end
  object Label1: TLabel
    Left = 144
    Top = 304
    Width = 659
    Height = 55
    Caption = 'Autorem jest Tomek Pota'#324'ski'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clRed
    Font.Height = -47
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    Visible = False
  end
  object ColorGrid1: TColorGrid
    Left = 8
    Top = 0
    Width = 128
    Height = 96
    TabOrder = 0
    OnChange = ColorGrid1Change
  end
  object Button2: TButton
    Left = 32
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Otwieraj'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button4: TButton
    Left = 32
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Zapisuj'
    TabOrder = 2
    OnClick = Button4Click
  end
  object Col2: TColorGrid
    Left = 16
    Top = 296
    Width = 100
    Height = 100
    TabOrder = 3
    Visible = False
    OnChange = Col2Change
  end
  object Button6: TButton
    Left = 0
    Top = 400
    Width = 137
    Height = 33
    Caption = 'Zamknij'
    TabOrder = 4
    OnClick = Button6Click
  end
  object MainMenu1: TMainMenu
    Left = 216
    Top = 128
    object Plik1: TMenuItem
      Caption = 'Plik'
      object Otwrz1: TMenuItem
        Caption = 'Wyczysc'
        OnClick = Otwrz1Click
      end
      object Zapisz1: TMenuItem
        Caption = 'Instrukcja'
        OnClick = Zapisz1Click
      end
      object Zamknij1: TMenuItem
        Caption = 'Zamknij'
        OnClick = Zamknij1Click
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 20000
    Left = 176
    Top = 448
  end
  object OPD: TOpenPictureDialog
    Left = 280
    Top = 168
  end
  object SPD: TSavePictureDialog
    Left = 200
    Top = 224
  end
end
