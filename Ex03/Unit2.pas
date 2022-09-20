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
    Label1: TLabel;
    btnAction: TButton;
    lbResult: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
  xDistanciaTotal: Double;
  xConsumoGasto: Double;
  xResultado: Double;

begin
  xDistanciaTotal := StrToFloatDef(edtNum1.Text, 0);
  xConsumoGasto := StrToFloatDef(edtNum2.Text, 0);

  xResultado := xDistanciaTotal / xConsumoGasto;

  lbResult.Caption := Format('O automóvel anda %f km/l)', [xResultado]);
end;

end.
