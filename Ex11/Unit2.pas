unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    edtCusto: TEdit;
    lbTittle: TLabel;
    btnAction: TButton;
    lbResult: TLabel;
    Label3: TLabel;
    edtLucro: TEdit;
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
  xCusto : Double;
  xLucro : Double;
  xResult: Double;

begin
  xCusto := StrToFloatDef(edtCusto.Text, 0);
  xLucro := StrToFloatDef(edtLucro.Text, 0);

  xResult := xCusto * (1 + xLucro/100);

  lbResult.Caption := Format('Seu pre�o de venda deve ser R$ %s',[FormatFloat('#,##0.00',xResult)]);
end;

end.
