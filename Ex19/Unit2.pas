unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TArraySexo = array of String;
  TArraySexoResult = array of TArraySexo;
  TForm2 = class(TForm)
    lbTittle: TLabel;
    pnlContainer: TPanel;
    lbQtd: TLabel;
    edtQtdPessoas: TEdit;
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

function filtrarArrayPorSexo(aArray : TArraySexo): TArraySexoResult;
var
  I : Integer;
begin

  SetLength(Result, 2);

  for I := 0 to Length(aArray) - 1 do
  begin
    if aArray[I] = 'M' then
    begin
      SetLength(Result[0], Length(Result[0]) + 1);
      Result[0][I] := aArray[I];
    end
    else
    begin
      SetLength(Result[1], Length(Result[1]) + 1);
      Result[1][I] := aArray[I];
    end;

  end;

end;

procedure TForm2.btnCalculateClick(Sender: TObject);
var
  xQtdPessoas, I : Integer;
  xNome : array of String;
  xSexo : TArraySexo;
  xTotal : TArraySexoResult;
begin

  memResult.Clear;
  memResult.Visible := True;

  xQtdPessoas := StrToIntDef(edtQtdPessoas.Text, 1);

  for I := 0 to xQtdPessoas - 1 do
  begin
    SetLength(xNome, I + 1);
    SetLength(xSexo, I + 1);
    SetLength(xSexo, I + 1);

    xNome[I] := inputbox('Informar nome','Nome: ','');
    if MessageDlg('Essa pessoa ? do sexo m?sculino?',
      mtInformation, [mbYes, mbNo], 0) = mrYes then
    begin
      xSexo[I] := 'M';
    end
    else
    begin
      xSexo[I] := 'F';
    end;
    memResult.Lines.Add(Format('%s | %s',[xNome[I], xSexo[I]]));

  end;

  xTotal := filtrarArrayPorSexo(xSexo);
  memResult.Lines.Add('');
  memResult.Lines.Add(Format('Total mulheres: %d' ,[Length(xTotal[1])]));
  memResult.Lines.Add(Format('Total homes: %d' ,[Length(xTotal[0])]));

end;

end.
