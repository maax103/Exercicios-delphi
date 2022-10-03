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
    edtQtdFunc: TEdit;
    lbTittle: TLabel;
    btnCalculate: TButton;
    memResult: TMemo;
    procedure btnCalculateClick(Sender: TObject);
  private
    FFuncionarios : array of TFuncionario;
    procedure cadastrarFuncionarios(const aQtdFuncionarios : Integer);
    procedure escreverResposta;
    procedure calcularNovoSalario;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEx28: TfrmEx28;

implementation

{$R *.dfm}

procedure TfrmEx28.btnCalculateClick(Sender: TObject);
var
  xQtdFuncionarios : Integer;
begin
  SetLength(FFuncionarios, 0);
  xQtdFuncionarios := StrToIntDef(edtQtdFunc.Text, 1);
  cadastrarFuncionarios(xQtdFuncionarios);
  escreverResposta;
end;

procedure TfrmEx28.cadastrarFuncionarios(const aQtdFuncionarios : Integer);
var
  xNome : String;
  xSalario : Currency;
  xNumeroFunc, I : Integer;
  begin
  I := 0;

  repeat
    xNumeroFunc := Length(FFuncionarios) + 1;
    SetLength(FFuncionarios, xNumeroFunc);

    xNome := InputBox(
      Format('Salário do funcionário %d',[xNumeroFunc]),
      'Nome','');
    xSalario := StrToCurr(InputBox(
      Format('Salário do funcionário %d',[xNumeroFunc]),
      'Salário',''));

    FFuncionarios[xNumeroFunc - 1].nome := xNome;
    FFuncionarios[xNumeroFunc - 1].salario := xSalario;

    Inc(I)
  until (I < aQtdFuncionarios);
end;

procedure TfrmEx28.calcularNovoSalario;
var
  xSalario : Currency;
  xAjustePerc : Double;
  I : Integer;
const SALARIO_MINIMO = 1212;
begin
  for I := 0 to Length(FFuncionarios) - 1 do
  begin
    xSalario := FFuncionarios[I].salario;
    if xSalario < 3 * SALARIO_MINIMO then
      xAjustePerc := 1.5
    else if xSalario <= 10 * SALARIO_MINIMO then
      // Continuar daqui


    FFuncionarios[I].ultimoSalario := xSalario;
    FFuncionarios[I].salario := FFuncionarios[I].salario * xAjustePerc;
  end;
end;

procedure TfrmEx28.escreverResposta;
var
  I : Integer;
begin
  memResult.Clear;

  for I := 0 to Length(FFuncionarios) - 1 do
  begin
    memResult.Lines.Add(Format('Nome',[]));
  end;


end;

end.
