unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    edtNum1: TEdit;
    edtNum2: TEdit;
    lbTittle: TLabel;
    btnAction: TButton;
    lbResult: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtVendas: TEdit;
    Label4: TLabel;
    procedure btnActionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnActionClick(Sender: TObject);
var
  xNome: String;
  xSalario: Double;
  xTotalVendas: Double;
  xPagamentoBruto : Double;
const
  C_COMISSAO = 0.15;

begin
  xNome := edtNum1.Text;
  xSalario := StrToFloatDef(edtNum2.Text, 0);
  xTotalVendas := StrToFloat(edtVendas.Text);

  xPagamentoBruto := xSalario + xTotalVendas * C_COMISSAO;

  lbResult.Caption := Format('%s, seu sal�rio � %f e seu pagamento bruto ser� %f', [xNome, xSalario, xPagamentoBruto]);
end;

end.
