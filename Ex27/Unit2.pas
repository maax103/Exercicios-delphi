unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPrecos = (nAlcool, nGasolina, nDiesel);
  TForm2 = class(TForm)
    lbTittle: TLabel;
    pnlContainer: TPanel;
    btnStart: TButton;
    memResult: TMemo;
    rdgTypes: TRadioGroup;
    procedure btnStartClick(Sender: TObject);
  private
    procedure calcularVenda;
    procedure iniciarVenda(
       var aPreco : Currency;
       var aDesconto : Double;
       var aType : Integer);
    procedure escreverResposta;
    procedure vender;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.calcularVenda;
var
  xPreco : Currency;
  xDesconto : Double;
  xType : Integer;
begin
  iniciarVenda();
  escreverResposta();
end;

function calcularPercentDesconto(var aType : Integer) : Double;
begin
  Result := 0;
  case TPrecos(aType) of
    nAlcool     : Result:= 0.25;
    nGasolina   : Result:= 0.21;
    nDiesel     : Result:= 0.14;
  end;
end;

procedure TForm2.iniciarVenda(
  var aPreco : Currency;
  var aDesconto : Double;
  var aType : Integer);
begin
  aType := rdgTypes.ItemIndex;
  aDesconto := calcularPercentDesconto(xType);
  aPreco := StrToCurrDef(InputBox('Informar o pre�o do ve�culo',
    'R$', ''), 0);
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
  calcularVenda;
end;

end.
