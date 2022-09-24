unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    edtNum: TEdit;
    lbTittle: TLabel;
    Label3: TLabel;
    pnlResult: TPanel;
    procedure edtNumChange(Sender: TObject);
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


procedure TForm2.edtNumChange(Sender: TObject);
var
  xNum : Double;
  xResult : Boolean;
begin
  xResult := False;
  xNum := StrToFloatDef(edtNum.Text,0);

  pnlResult.Visible := True;
  if xNum > 10 then pnlResult.Caption := 'Maior que 10!'
  else pnlResult.Caption := 'Informe um número maior que 10...';

end;

end.
