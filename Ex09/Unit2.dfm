object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 387
  ClientWidth = 409
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
    Width = 403
    Height = 19
    Margins.Top = 20
    Align = alTop
    Alignment = taCenter
    Caption = 'Calcular rendimento de aplica'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 238
  end
  object lbResult: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 295
    Width = 403
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
  object Label3: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 62
    Width = 403
    Height = 15
    Margins.Top = 20
    Align = alTop
    Alignment = taCenter
    Caption = 'Investimento inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 111
  end
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 117
    Width = 403
    Height = 15
    Margins.Top = 10
    Align = alTop
    Alignment = taCenter
    Caption = 'Quantos meses ficar'#225' rendendo?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 189
  end
  object Label2: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 172
    Width = 403
    Height = 15
    Margins.Top = 10
    Align = alTop
    Alignment = taCenter
    Caption = 'Taxa de juro ao m'#234's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 116
  end
  object btnAction: TButton
    AlignWithMargins = True
    Left = 40
    Top = 237
    Width = 329
    Height = 25
    Margins.Left = 40
    Margins.Top = 20
    Margins.Right = 40
    Align = alTop
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = btnActionClick
  end
  object edtInvestment: TEdit
    AlignWithMargins = True
    Left = 40
    Top = 83
    Width = 329
    Height = 21
    Margins.Left = 40
    Margins.Right = 40
    Align = alTop
    Alignment = taCenter
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
  end
  object edtTime: TEdit
    AlignWithMargins = True
    Left = 40
    Top = 138
    Width = 329
    Height = 21
    Margins.Left = 40
    Margins.Right = 40
    Align = alTop
    Alignment = taCenter
    TabOrder = 2
    Text = '1'
  end
  object edtTax: TEdit
    AlignWithMargins = True
    Left = 40
    Top = 193
    Width = 329
    Height = 21
    Margins.Left = 40
    Margins.Right = 40
    Align = alTop
    Alignment = taCenter
    TabOrder = 3
    Text = '0,07'
  end
end
