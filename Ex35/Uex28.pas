unit Uex28;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFuncionario = record
    nome : String;
    ultimoSalario : Currency;
    salario : Currency;
  end;
  TfrmEx28 = class(TForm)
    edtConsumo: TEdit;
    lbTittle: TLabel;
    btnCalculate: TButton;
    procedure btnCalculateClick(Sender: TObject);
  private
    FFuncionarios : array of TFuncionario;
    procedure escreverResposta(aResult : Currency; aConsumo : Double);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEx28: TfrmEx28;

implementation

uses
  UFrmExercicios;

{$R *.dfm}

function calcularConsumo(aConsumo : Double) : Currency;
begin
  Result := aConsumo * 0.6;
end;

procedure TfrmEx28.btnCalculateClick(Sender: TObject);
var
  xConsumoKWh : Double;
  xValorDaConta : Currency;
begin
  xConsumoKWh := StrToFloatDef(edtConsumo.Text, 1);
  xValorDaConta := calcularConsumo(xConsumoKWh);
  escreverResposta(xValorDaConta, xConsumoKWh);

end;

procedure TfrmEx28.escreverResposta(aResult : Currency; aConsumo : Double);
begin
  Exercicios.memResult.Clear;
  Exercicios.memResult.Lines.Add(Format(
    'Tipo de cliente: Residêncial' + sLineBreak +
    'Consumo Total: %f' + sLineBreak +
    'Valor da conta: %f',
    [aConsumo, aResult])
  );

end;

end.
