unit cadocupacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmOcupacao = class(TForm)
    Label6: TLabel;
    btnGravar: TButton;
    txtOcupacao: TEdit;
    FDQryInsUp: TFDQuery;
    FDQryCheck: TFDQuery;
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOcupacao: TfrmOcupacao;

implementation

{$R *.dfm}

uses telainicial;

procedure TfrmOcupacao.btnGravarClick(Sender: TObject);

 begin
  if Trim(txtOcupacao.Text) = '' then
   begin
    showMessage('Digite a ocupação!');
    exit;
   end;

   //Filtra o Nome da Ocupacao se ja existe
   FDQryCheck.Close;
   FDQryCheck.SQL.Clear;
   FDQryCheck.SQL.ADD('select ocupacaonome from ocupacao where upper(ocupacaonome) = upper(:ocupacaonome) ');
   FDQryCheck.ParamByName('ocupacaonome').AsString := txtOcupacao.Text;
   FDQryCheck.Open;

   if not (FDQryCheck.IsEmpty) then
   begin
     showMessage('Essa ocupação já existe!');
     txtOcupacao.Text := '';
     exit;
   end;

   //Insere nova ocupacao
   FDQryInsUp.Open;
   FDQryInsUp.SQL.Clear;
   FDQryInsUp.Sql.Add('insert into ocupacao (ocupacaonome) values (:ocupacaonome)');
   FDQryInsUp.ParamByName('ocupacaonome').AsString := txtOcupacao.Text;
   FDQryInsUp.ExecSQL;
   showMessage('Sucesso ao Gravar');
   txtOcupacao.Text := '';
   


 end;

procedure TfrmOcupacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FDQryInsUP.Close;
FDQryInsUp.SQL.Clear;
end;

end.
