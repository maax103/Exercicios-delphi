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
    Label3: TLabel;
    edtDistribuidor: TEdit;
    Label2: TLabel;
    edtImpostos: TEdit;
    Label4: TLabel;
    pnlResult: TPanel;
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
  xImpostoDistribuidor : Double;
  xOutrosImpostos : Double;
  xResult: Double;

begin
  xCusto := StrToFloatDef(edtCusto.Text, 0);
  xImpostoDistribuidor := StrToFloatDef(edtDistribuidor.Text, 0);
  xOutrosImpostos := StrToFloatDef(edtImpostos.Text, 0);

  xResult := xCusto * (1 + xOutrosImpostos/100) * (1 + xImpostoDistribuidor/100);

  pnlResult.Visible := true;
  pnlResult.Caption := Format('Pre�o ao consumidor: R$ %s',[FormatFloat('#,##0.00',xResult)]);
end;

end.
