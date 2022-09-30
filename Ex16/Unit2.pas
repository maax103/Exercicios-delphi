unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    lbTittle: TLabel;
    pnlResult: TPanel;
    lbNome: TLabel;
    edtName: TEdit;
    btnCalculate: TButton;
    lbResult: TLabel;
    procedure btnCalculateClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}


procedure TForm2.btnCalculateClick(Sender: TObject);
var
  xNota1, xNota2, xNota3, xMedia : Double;
  xNome : String;
begin
  xNome := edtName.Text;
  xNota1 := StrToFloatDef(inputbox('Informar','Primeira nota',''),0);
  xNota2 := StrToFloatDef(inputbox('Informar','Segunda nota',''),0);
  xNota3 := StrToFloatDef(inputbox('Informar','Terceira nota',''),0);

  xMedia := (xNota1 + xNota2 + xNota3) / 3;

  if xMedia >= 7 then
  begin
    lbResult.Caption := Format('%s foi provado com nota %f!',[xNome,xMedia])
  end
  else if xMedia <= 5 then
  begin
    lbResult.Caption := Format('%s foi reprovado com nota %f.',[xNome, xMedia])
  end
  else
  begin
    lbResult.Caption := Format('%s est� em recupera��o com nota %f.',[xNome, xMedia])
  end;


end;

end.
