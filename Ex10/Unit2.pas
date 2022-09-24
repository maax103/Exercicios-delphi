unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    edtCompra: TEdit;
    lbTittle: TLabel;
    btnAction: TButton;
    lbResult: TLabel;
    Label3: TLabel;
    edtPrestacoes: TEdit;
    Label1: TLabel;
    procedure btnActionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Math;

{$R *.dfm}

procedure TForm2.btnActionClick(Sender: TObject);
var
  xCompra: Double;
  xPrestacoes: Integer;
  xResult: Double;

begin
  xCompra := StrToFloatDef(edtCompra.Text, 0);
  xPrestacoes := StrToIntDef(edtPrestacoes.Text, 0);

  xResult := xCompra / xPrestacoes;

  lbResult.Caption := Format('Você deve pagar %d prestações', [xPrestacoes]) +
    sLineBreak + Format('de R$ %s', [FormatFloat('#,##0.00', xResult)]);
end;

end.
