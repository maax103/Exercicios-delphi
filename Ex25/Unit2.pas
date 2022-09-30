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
    procedure solicitarNumeros;
    procedure escreverResposta;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.solicitarNumeros();
begin
  SetLength(FNumeros, 2);
  FNumeros[0] := StrToFloatDef(InputBox('Informar número A',
    'Número: ', ''), 0);
  FNumeros[1] := StrToFloatDef(InputBox('Informar número B',
    'Número: ', ''), 0);
end;

function isPositive(aNum : Double) : Boolean;
begin
  if aNum > 0 then
    Result := True
  else
    Result := False;
end;

function whichIsBigger(aNumA : Double; aNumB : Double) : Double;
begin
  if aNumA > aNumB then
    Result := aNumA
  else
    Result := aNumB;
end;

function isEqual(aNumA : Double; aNumB : Double) : Boolean;
begin
  if aNumA = aNumB then
    Result := True
  else
    Result := False;
end;

procedure TForm2.escreverResposta;
var
  I : Integer;
  xNumA, xNumB : Double;
  xDescription : String;
begin
  xNumA := FNumeros[0];
  xNumB := FNumeros[1];
  if isEqual(xNumA, xNumB) then
    xDescription := 'Os números são iguais'
  else
    xDescription := Format('Os números são diferentes pois %f é maior',
      [whichIsBigger(xNumA, xNumB)]);

  memResult.Lines.Add(Format('%s', [xDescription]));
end;

procedure TForm2.btnStartClick(Sender: TObject);
var
  xQtdPessoas: Integer;
  I: Integer;
  xContinue: Boolean;

begin

  FNumeros := [];
  memResult.Clear;
  xContinue := True;
  memResult.Visible := True;

  repeat
    solicitarNumeros;
    escreverResposta;
    if MessageDlg('Deseja informar outro número?', mtCustom,
      [mbYes, mbNo], mrNo) = mrNo
    then
      xContinue := False
  until xContinue = False;

  end;

end.
