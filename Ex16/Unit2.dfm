object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 369
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    417
    369)
  PixelsPerInch = 96
  TextHeight = 13
  object lbTittle: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 20
    Width = 411
    Height = 23
    Margins.Top = 20
    Align = alTop
    Alignment = taCenter
    Caption = 'Avaliador de aluno'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 160
  end
  object pnlResult: TPanel
    Left = 6
    Top = 72
    Width = 403
    Height = 289
    Anchors = [akLeft, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lbNome: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 11
      Width = 395
      Height = 18
      Margins.Top = 10
      Align = alTop
      Alignment = taCenter
      Caption = 'Digite seu nome'
      ExplicitLeft = 8
      ExplicitTop = 13
      ExplicitWidth = 385
    end
    object lbResult: TLabel
      Left = 4
      Top = 192
      Width = 389
      Height = 81
      Alignment = taCenter
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object edtName: TEdit
      Left = 8
      Top = 37
      Width = 385
      Height = 26
      Alignment = taCenter
      TabOrder = 0
    end
    object btnCalculate: TButton
      Left = 136
      Top = 103
      Width = 129
      Height = 49
      BiDiMode = bdLeftToRight
      Caption = 'Calcular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnClick = btnCalculateClick
    end
  end
end
