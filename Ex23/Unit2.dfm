object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 134
  ClientWidth = 256
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    256
    134)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlContainer: TPanel
    Left = 0
    Top = 0
    Width = 256
    Height = 768
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 417
    object lbTittle: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 21
      Width = 248
      Height = 23
      Margins.Top = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Avaliar n'#250'mero'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 131
    end
    object btnStart: TButton
      AlignWithMargins = True
      Left = 81
      Top = 67
      Width = 94
      Height = 25
      Margins.Left = 80
      Margins.Top = 20
      Margins.Right = 80
      Align = alTop
      Caption = 'Iniciar'
      TabOrder = 0
      OnClick = btnStartClick
      ExplicitWidth = 255
    end
  end
end
