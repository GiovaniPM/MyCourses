object MainForm: TMainForm
  Left = 214
  Top = 102
  BorderStyle = bsDialog
  Caption = 'Glyph Previewer by Harry Kakoulidis'
  ClientHeight = 438
  ClientWidth = 668
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Tag = 1
    Left = 8
    Top = 8
    Width = 89
    Height = 105
    Flat = True
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Tag = 2
    Left = 104
    Top = 8
    Width = 89
    Height = 105
    Flat = True
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton3: TSpeedButton
    Tag = 3
    Left = 200
    Top = 8
    Width = 89
    Height = 105
    Flat = True
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton4: TSpeedButton
    Tag = 4
    Left = 296
    Top = 8
    Width = 89
    Height = 105
    Flat = True
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton5: TSpeedButton
    Tag = 5
    Left = 8
    Top = 120
    Width = 89
    Height = 105
    Flat = True
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton6: TSpeedButton
    Tag = 6
    Left = 104
    Top = 120
    Width = 89
    Height = 105
    Flat = True
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton7: TSpeedButton
    Tag = 7
    Left = 200
    Top = 120
    Width = 89
    Height = 105
    Flat = True
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton8: TSpeedButton
    Tag = 8
    Left = 296
    Top = 120
    Width = 89
    Height = 105
    Flat = True
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton9: TSpeedButton
    Tag = 9
    Left = 8
    Top = 232
    Width = 89
    Height = 105
    Flat = True
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton10: TSpeedButton
    Tag = 10
    Left = 104
    Top = 232
    Width = 89
    Height = 105
    Flat = True
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton11: TSpeedButton
    Tag = 11
    Left = 200
    Top = 232
    Width = 89
    Height = 105
    Flat = True
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton12: TSpeedButton
    Tag = 12
    Left = 296
    Top = 232
    Width = 89
    Height = 105
    Flat = True
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object lblDir: TLabel
    Left = 408
    Top = 40
    Width = 6
    Height = 13
    Caption = '1'
  end
  object Label1: TLabel
    Left = 104
    Top = 376
    Width = 61
    Height = 13
    Caption = 'Default Copy'
  end
  object Label2: TLabel
    Left = 104
    Top = 352
    Width = 77
    Height = 13
    Caption = 'Action with click'
  end
  object btnFind: TButton
    Left = 496
    Top = 376
    Width = 75
    Height = 25
    Hint = 'Search for Glyphs (recursive)'
    Caption = 'Find Files'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = btnFindClick
  end
  object btnUp: TButton
    Left = 8
    Top = 360
    Width = 75
    Height = 25
    Hint = 'Press the left arrow'
    Caption = 'Up'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = btnUpClick
  end
  object btnDown: TButton
    Left = 8
    Top = 392
    Width = 75
    Height = 25
    Hint = 'Press the right arrow'
    Caption = 'DOWN'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btnDownClick
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 408
    Top = 61
    Width = 241
    Height = 276
    ItemHeight = 16
    TabOrder = 3
    OnChange = DirectoryListBox1Change
  end
  object DriveComboBox1: TDriveComboBox
    Left = 408
    Top = 10
    Width = 145
    Height = 19
    DirList = DirectoryListBox1
    TabOrder = 4
  end
  object edDest: TEdit
    Left = 104
    Top = 392
    Width = 305
    Height = 21
    TabOrder = 5
    Text = 'C:\Delphi\Projects'
  end
  object rbDelete: TRadioButton
    Left = 200
    Top = 352
    Width = 113
    Height = 17
    Caption = 'Delete'
    TabOrder = 6
    OnClick = rbDeleteClick
  end
  object rbCopy: TRadioButton
    Left = 264
    Top = 352
    Width = 145
    Height = 17
    Caption = 'Copy to below directory'
    Checked = True
    TabOrder = 7
    TabStop = True
  end
end
