unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    edtTemp: TEdit;
    lbTittle: TLabel;
    btnAction: TButton;
    lbResult: TLabel;
    Label3: TLabel;
    rdgTemperature: TRadioGroup;
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
  xTemperature: Double;
  xUnit: String;
  xResult1: Double;
  xResult2: Double;

begin
  xTemperature := StrToFloatDef(edtTemp.Text, 0);
  xUnit := rdgTemperature.Items[rdgTemperature.ItemIndex];

  if xUnit = '�C' then
  begin
    xResult1 := (9 * xTemperature + 160) / 5;
    xResult2 := xTemperature + 273;
    lbResult.Caption := Format('%f �C = %f �F = %f K ',
      [xTemperature, xResult1, xResult2]);
  end
  else if xUnit = '�F' then
  begin
    xResult1 := ((xTemperature * 5) - 160) / 9; // �C
    xResult2 := (xTemperature + 459.67) * 5 / 9; // K
    lbResult.Caption := Format('%f �F = %f �C = %f K',
      [xTemperature, xResult1, xResult2]);
  end
  else if xUnit = 'K' then
  begin
    xResult1 := xTemperature - 273;
    xResult2 := xTemperature * 9 / 5 - 459.67;
    lbResult.Caption := Format('%f �K = %f �C = %f �F',
      [xTemperature, xResult1, xResult2]);
  end;

end;

end.
