unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    lbTittle: TLabel;
    pnlContainer: TPanel;
    lbQtd: TLabel;
    edtQtdAlunos: TEdit;
    btnCalculate: TButton;
    memResult: TMemo;
    procedure btnCalculateClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

function Evaluate(aIdade : Integer) : String;
begin
  if aIdade > 18 then
    Result := 'Maior de idade'
  else
    Result := 'Menor de idade';
end;

procedure TForm2.btnCalculateClick(Sender: TObject);
var
  xQtdAlunos, I : Integer;
  xNome : array of String;
  xIdades : array of Integer;
begin

  xQtdAlunos := StrToInt(edtQtdAlunos.Text);

  for I := 0 to xQtdAlunos - 1 do
  begin
    SetLength(xNome, I + 1);
    SetLength(xIdades, I + 1);
    xNome[I] := inputbox('Informar nome','Nome: ','');
    xIdades[I] := StrToIntDef(inputbox('Informar idades','Idades: ',''),0);

    memResult.Lines.Add(Format('%s | %d | %s',
    [xNome[I],
    xIdades[I],
    Evaluate(xIdades[I])
    ]));

  end;

  memResult.Visible := True;


end;

end.
