object frmEx28: TfrmEx28
  Left = 0
  Top = 0
  Caption = 'Calcular conta de luz'
  ClientHeight = 275
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
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
    Top = 247
    Width = 280
    Height = 25
    Margins.Left = 100
    Margins.Top = 20
    Margins.Right = 100
    Align = alBottom
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = btnCalculateClick
    ExplicitTop = 311
  end
  object rgroupTipo: TRadioGroup
    AlignWithMargins = True
    Left = 3
    Top = 127
    Width = 474
    Height = 97
    Align = alClient
    Caption = 'Selecione uma op'#231#227'o'
    Columns = 2
    Items.Strings = (
      'Resid'#234'ncia'
      'Com'#233'rcio'
      'Ind'#250'stria'
      'Fazenda')
    TabOrder = 2
    ExplicitHeight = 114
  end
end
