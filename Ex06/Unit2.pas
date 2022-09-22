unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    edtNome: TEdit;
    edtNota1: TEdit;
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
  xAvalue : Double;
  xBvalue : Double;
  xAux : Double;

begin
  xAvalue := StrToFloatDef(edtNome.Text, 0);
  xBvalue := StrToFloatDef(edtNota1.Text, 0);
  xAux := xAvalue;

  xAvalue := xBvalue;
  xBvalue := xAux;

  lbResult.Caption := Format('A = %f' + sLineBreak + 'B = %f', [xAvalue ,xBvalue]);
end;

end.
