object frmEx28: TfrmEx28
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio 28'
  ClientHeight = 208
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 16
  object lbTittle: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 20
    Width = 474
    Height = 24
    Margins.Top = 20
    Align = alTop
    Alignment = taCenter
    Caption = 'Calcular valor da conta de luz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 263
  end
  object edtConsumo: TEdit
    AlignWithMargins = True
    Left = 60
    Top = 97
    Width = 360
    Height = 24
    Margins.Left = 60
    Margins.Top = 50
    Margins.Right = 60
    Align = alTop
    Alignment = taCenter
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TextHint = 'Insira o valor de KW/h consumido'
  end
  object btnCalculate: TButton
    AlignWithMargins = True
    Left = 100
    Top = 144
    Width = 280
    Height = 25
    Margins.Left = 100
    Margins.Top = 20
    Margins.Right = 100
    Align = alTop
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = btnCalculateClick
  end
end
