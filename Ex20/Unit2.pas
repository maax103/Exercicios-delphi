unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TCarros = array of String;
  TAnos = array of Integer;
  TForm2 = class(TForm)
    lbTittle: TLabel;
    pnlContainer: TPanel;
    memResult: TMemo;
    btnCalculate: TButton;
    procedure btnCalculateClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

function filtarCarrosVelhos(var aCarros : TCarros; var aAnos : TAnos) : TCarros;
var
  carIndex, carCount: Integer;
begin
  Result := [];
  carCount := 0;
  for carIndex := 0 to Length(aCarros) - 1 do
  begin
    if aAnos[carIndex] <= 2000 then
    begin
      carCount := carCount + 1;
      SetLength(Result, carCount);
      Result[carCount - 1] := aCarros[carIndex];
    end;
  end;

end;

procedure TForm2.btnCalculateClick(Sender: TObject);
var
  xContinue: Boolean;
  I: Integer;
  xCarro: TCarros;
  xCarrosVelhos : TCarros;
  xAno: TAnos;
  xPreco: Array of Currency;
const
  C_VELHO = 0.88;
  C_NOVO = 0.93;
begin

  memResult.Clear;
  memResult.Visible := True;
  I := 0;

  while True do
  begin
    SetLength(xPreco, I + 1);
    SetLength(xCarro, I + 1);
    SetLength(xAno, I + 1);

    xCarro[I] := inputbox('Informar nome do carro', 'Carro: ', '');
    xAno[I] := StrToInt(inputbox('Informar ano de fabrica��o',
      'Ano (YYYY): ', ''));
    xPreco[I] := StrToFloatDef(inputbox('Informar o pre�o', 'Pre�o: ', ''), 0);

    if xAno[I] > 2000 then
    begin
      xPreco[I] := xPreco[I] * C_NOVO;
    end
    else
    begin
      xPreco[I] := xPreco[I] * C_VELHO;
    end;

    memResult.Lines.Add(Format('%s: RS %s', [xCarro[I], FormatFloat('#,##0.00',xPreco[I])]));

    if MessageDlg('Deseja informar outro ve�culo?', mtInformation,
      [mbYes, mbNo], 0) = mrNo then
      Break;

    I := I + 1
  end;

  xCarrosVelhos := filtarCarrosVelhos(xCarro, xAno);

  memResult.Lines.Add('');
  memResult.Lines.Add(Format('Total de carros: %d' ,[Length(xCarro)]));
  memResult.Lines.Add(Format('Total de carros at� 2000: %d' ,[Length(xCarrosVelhos)]));
end;

end.
