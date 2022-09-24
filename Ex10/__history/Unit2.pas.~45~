unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    edtInvestment: TEdit;
    lbTittle: TLabel;
    btnAction: TButton;
    lbResult: TLabel;
    Label3: TLabel;
    edtTime: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtTax: TEdit;
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
  xInvestment   : Double;
  xTime         : Double;
  xTax          : Double;
  xResult       : Double;

begin
  xInvestment := StrToFloatDef(edtInvestment.Text, 0);
  xTime := StrToFloatDef(edtTime.Text, 0);
  xTax := StrToFloatDef(edtTax.Text, 0);

  xResult := xInvestment * Math.Power((1 + xTax/100),xTime);




  lbResult.Caption := Format('Resultado: %s',
      [FormatFloat('#,##0.00',xResult)]);
end;

end.
