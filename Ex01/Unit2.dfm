object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 246
  ClientWidth = 257
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 20
    Width = 251
    Height = 19
    Margins.Top = 20
    Align = alTop
    Alignment = taCenter
    Caption = 'Soma de dois n'#250'meros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 164
  end
  object lbResult: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 198
    Width = 251
    Height = 19
    Margins.Top = 30
    Align = alTop
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 4
  end
  object edtNum1: TEdit
    AlignWithMargins = True
    Left = 40
    Top = 72
    Width = 177
    Height = 21
    Margins.Left = 40
    Margins.Top = 30
    Margins.Right = 40
    Align = alTop
    Alignment = taCenter
    TabOrder = 0
    ExplicitLeft = 3
    ExplicitWidth = 251
  end
  object edtNum2: TEdit
    AlignWithMargins = True
    Left = 40
    Top = 106
    Width = 177
    Height = 21
    Margins.Left = 40
    Margins.Top = 10
    Margins.Right = 40
    Align = alTop
    Alignment = taCenter
    TabOrder = 1
    ExplicitLeft = 3
    ExplicitWidth = 251
  end
  object btnAction: TButton
    AlignWithMargins = True
    Left = 40
    Top = 140
    Width = 177
    Height = 25
    Margins.Left = 40
    Margins.Top = 10
    Margins.Right = 40
    Align = alTop
    Caption = 'Somar'
    TabOrder = 2
    OnClick = btnActionClick
    ExplicitLeft = 152
    ExplicitTop = 159
    ExplicitWidth = 75
  end
end