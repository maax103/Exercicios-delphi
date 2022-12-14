unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TNumeros = (nUm, nDois, nTres, nQuatro, nCinco);
  TForm2 = class(TForm)
    lbTittle: TLabel;
    pnlContainer: TPanel;
    btnStart: TButton;
    lbResult: TLabel;
    procedure btnStartClick(Sender: TObject);
  private
    FNumero : Integer;
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
  FNumero := StrToIntDef(InputBox('Informar n?mero entre [1,5]',
    'N?mero: ', ''), 1);
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
begin
  var xResult := '';
  case TNumeros(FNumero - 1) of
    nUm : xResult := 'Um';
    nDois : xResult := 'Dois';
    nTres : xResult := 'Tres';
    nQuatro : xResult := 'Quatro';
    nCinco : xResult := 'Cinco';
  end;
  lbResult.Caption := xResult;
end;

procedure TForm2.btnStartClick(Sender: TObject);
begin
  solicitarNumero;
  escreverResposta;
end;

end.
