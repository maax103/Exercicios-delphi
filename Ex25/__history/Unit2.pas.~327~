unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TNumeros = array of Double;

  TForm2 = class(TForm)
    lbTittle: TLabel;
    pnlContainer: TPanel;
    memResult: TMemo;
    btnStart: TButton;
    procedure btnStartClick(Sender: TObject);
  private
    FNumeros : TNumeros;
    procedure solicitarNumero;
    procedure escreverResposta;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.solicitarNumero();
begin
  SetLength(FNumeros, Length(FNumeros) + 1);
  FNumeros[Length(FNumeros) - 1] := StrToFloatDef(InputBox('Informar número',
    'Número: ', ''), 0);
end;

function isPositive(aNum : Double) : Boolean;
begin
  if aNum > 0 then
    Result := True
  else
    Result := False;
end;

function isNegative(aNum : Double) : Boolean;
begin
  if aNum < 0 then
    Result := True
  else
    Result := False;
end;

function isZero(aNum : Double) : Boolean;
begin
  if aNum = 0 then
    Result := True
  else
    Result := False;
end;

procedure TForm2.escreverResposta;
var
  I, xLastIndex : Integer;
  xDescription : String;
begin

  xLastIndex := Length(FNumeros) - 1;

  if isPositive(FNumeros[xLastIndex]) then
    xDescription := 'positivo'
  else if isNegative(FNumeros[xLastIndex]) then
    xDescription := 'negativo'
  else if isZero(FNumeros[xLastIndex]) then
    xDescription := 'zero';

  memResult.Lines.Add(Format('%f | %s', [FNumeros[xLastIndex], xDescription]));
end;

procedure TForm2.btnStartClick(Sender: TObject);
var
  xQtdPessoas: Integer;
  I: Integer;
  xContinue: Boolean;

begin

  memResult.Clear;
  xContinue := True;
  memResult.Visible := True;

  repeat
    solicitarNumero;
    escreverResposta;
    if MessageDlg('Deseja informar outro número?', mtCustom,
      [mbYes, mbNo], mrNo) = mrNo
    then
      xContinue := False
  until xContinue = False;

  end;

end.
