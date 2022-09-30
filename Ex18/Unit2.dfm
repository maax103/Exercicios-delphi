object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 755
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
    755)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlContainer: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 761
    Anchors = [akLeft, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lbQtd: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 107
      Width = 409
      Height = 18
      Margins.Top = 60
      Align = alTop
      Alignment = taCenter
      Caption = 'Digite o tamanho da lista'
      ExplicitWidth = 172
    end
    object lbTittle: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 21
      Width = 409
      Height = 23
      Margins.Top = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Listando maiores de idade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 227
    end
    object edtQtdAlunos: TEdit
      AlignWithMargins = True
      Left = 31
      Top = 131
      Width = 355
      Height = 26
      Margins.Left = 30
      Margins.Right = 30
      Align = alTop
      Alignment = taCenter
      TabOrder = 0
    end
    object btnCalculate: TButton
      AlignWithMargins = True
      Left = 81
      Top = 220
      Width = 255
      Height = 49
      Margins.Left = 80
      Margins.Top = 60
      Margins.Right = 80
      Align = alTop
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
    object memResult: TMemo
      AlignWithMargins = True
      Left = 11
      Top = 322
      Width = 395
      Height = 383
      Margins.Left = 10
      Margins.Top = 50
      Margins.Right = 10
      Align = alTop
      Alignment = taCenter
      TabOrder = 2
      Visible = False
    end
  end
end
