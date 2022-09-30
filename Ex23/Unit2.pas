unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    lbTittle: TLabel;
    pnlContainer: TPanel;
    btnStart: TButton;
    procedure btnStartClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

function isBiggerThan80(aNum : Double) : Boolean;
begin
  if aNum > 80 then
    Result := True
  else
    Result := False;
end;

function isSmallerThan25(aNum : Double) : Boolean;
begin
  if aNum < 25 then
    Result := True
  else
    Result := False;
end;

function isEqualTo40(aNum : Double) : Boolean;
begin
  if aNum = 40 then
    Result := True
  else
    Result := False;
end;

procedure TForm2.btnStartClick(Sender: TObject);
var
  xInputNumber: Double;
  xIsValid : Boolean;
begin

  xInputNumber := StrToFloatDef(InputBox('Informar','N�mero: ',''),0);

  xIsValid := isBiggerThan80(xInputNumber) or isSmallerThan25(xInputNumber)
              or isEqualTo40(xInputNumber);

  if xIsValid then MessageDlg(
  'N�mero v�lido!' + sLineBreak +
  'O n�mero informado � maior que 80 ou menor que 25 ou igual a 40'
  , mtInformation, [mbOK], 0);

  end;

end.
