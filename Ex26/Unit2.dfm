object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 220
  ClientWidth = 540
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    540
    220)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlContainer: TPanel
    Left = 0
    Top = 0
    Width = 540
    Height = 787
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lbTittle: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 21
      Width = 532
      Height = 23
      Margins.Top = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Escrever n'#250'mero por extenso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 253
    end
    object lbResult: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 125
      Width = 532
      Height = 44
      Margins.Top = 30
      Align = alTop
      Alignment = taCenter
      AutoSize = False
    end
    object btnStart: TButton
      AlignWithMargins = True
      Left = 81
      Top = 67
      Width = 378
      Height = 25
      Margins.Left = 80
      Margins.Top = 20
      Margins.Right = 80
      Align = alTop
      Caption = 'Iniciar'
      TabOrder = 0
      OnClick = btnStartClick
    end
  end
end
