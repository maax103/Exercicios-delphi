object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 388
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbTittle: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 20
    Width = 411
    Height = 19
    Margins.Top = 20
    Align = alTop
    Alignment = taCenter
    Caption = 'Avaliar n'#250'mero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 109
  end
  object Label3: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 62
    Width = 411
    Height = 15
    Margins.Top = 20
    Align = alTop
    Alignment = taCenter
    Caption = 'Insira um n'#250'mero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 101
  end
  object edtNum: TEdit
    AlignWithMargins = True
    Left = 40
    Top = 83
    Width = 337
    Height = 21
    Margins.Left = 40
    Margins.Right = 40
    Align = alTop
    Alignment = taCenter
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    OnChange = edtNumChange
  end
  object pnlResult: TPanel
    Left = 8
    Top = 128
    Width = 403
    Height = 252
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
  end
end
