object Exercicios: TExercicios
  Left = 0
  Top = 0
  Caption = 'Exercicios'
  ClientHeight = 584
  ClientWidth = 679
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Roboto'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbTittle: TLabel
    AlignWithMargins = True
    Left = 60
    Top = 40
    Width = 559
    Height = 19
    Margins.Left = 60
    Margins.Top = 40
    Margins.Right = 60
    Align = alTop
    Alignment = taCenter
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 71
  end
  object memResult: TMemo
    AlignWithMargins = True
    Left = 50
    Top = 82
    Width = 579
    Height = 461
    Margins.Left = 50
    Margins.Top = 20
    Margins.Right = 50
    Align = alTop
    TabOrder = 0
    ExplicitTop = 76
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 200
    object Exerccio281: TMenuItem
      Caption = 'Exerc'#237'cio 28'
      OnClick = Exerccio281Click
    end
    object Exerccio282: TMenuItem
      Caption = 'Exerc'#237'cio 29'
      OnClick = Exerccio282Click
    end
    object Exerccio301: TMenuItem
      Caption = 'Exerc'#237'cio 30'
      OnClick = Exerccio301Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
