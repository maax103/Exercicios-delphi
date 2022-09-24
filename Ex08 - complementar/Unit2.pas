unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, REST.Types,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TForm2 = class(TForm)
    edtReais: TEdit;
    lbTittle: TLabel;
    btnAction: TButton;
    lbResult: TLabel;
    Label3: TLabel;
    edtCotacao: TEdit;
    Label1: TLabel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    btnRequestAPI: TButton;
    procedure btnActionClick(Sender: TObject);
    procedure btnRequestAPIClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure DolarRequestAPI;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnActionClick(Sender: TObject);
var
  xReais: Double;
  xCotacao: Double;
  xResult: Double;

begin
  xReais := StrToFloatDef(edtReais.Text, 0);
  xCotacao := StrToFloatDef(edtCotacao.Text, 0);

  xResult := xReais * xCotacao;

  lbResult.Caption := Format('R$ %s = %s US$', [FormatFloat('#,##0.00', xReais),
    FormatFloat('#,##0.00', xResult)]);
end;

procedure TForm2.btnRequestAPIClick(Sender: TObject);
begin

  DolarRequestAPI;
end;

procedure TForm2.DolarRequestAPI;
  var
  xCotacao: String;

begin
  edtCotacao.Text := 'Buscando dado na API...';
  Sleep(1000);
  RESTClient1.BaseURL := 'http://economia.awesomeapi.com.br/json/last/USD-BRL';
  RESTRequest1.Execute;
  xCotacao := RESTResponse1.JSONValue.FindValue('USDBRL').FindValue('bid').ToString;
  edtCotacao.Text := xCotacao.Replace('"','').Replace('.',',');
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  DolarRequestAPI;
end;

end.
