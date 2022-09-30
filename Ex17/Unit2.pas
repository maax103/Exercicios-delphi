unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    lbTittle: TLabel;
    pnlResult: TPanel;
    lbNome: TLabel;
    edtQtdNumeros: TEdit;
    btnCalculate: TButton;
    lbResult: TLabel;
    procedure btnCalculateClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}


procedure TForm2.btnCalculateClick(Sender: TObject);
var
  xQtdNum : Integer;
  xValidNumbers : array of Double;
  xInputNumber : Double;
  I, xNcount : Integer;
begin

  xQtdNum := StrToIntDef(edtQtdNumeros.Text, 1);
  xNcount := 0;
  for I := 0 to xQtdNum - 1 do
  begin
    xInputNumber := StrToFloatDef(InputBox('Informar número','Número: ',''), 0);
    if (xInputNumber >= 10) and (xInputNumber <= 150) then
    begin
      xNcount := xNcount + 1;
      SetLength(xValidNumbers, xNcount);
      xValidNumbers[xNcount - 1] := xInputNumber;
    end;
  end;

  lbResult.Caption := 'Total: ' + IntToStr(Length(xValidNumbers));

end;

end.
