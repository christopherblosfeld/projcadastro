unit cadestadocivil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmEstCivil = class(TForm)
    Label6: TLabel;
    btnGravar: TButton;
    txtEstCivil: TEdit;
    FDQryInsUp: TFDQuery;
    FDQryCheck: TFDQuery;
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstCivil: TfrmEstCivil;

implementation

{$R *.dfm}

uses telainicial;

procedure TfrmEstCivil.btnGravarClick(Sender: TObject);
  begin
  //Verifica se o Estado Civil ja esta cadastrado
  FDQryCheck.Close;
  FDQryCheck.SQL.Clear;
  FDQryCheck.SQL.Add('select estadocivilnome from estadocivil where estadocivilnome = :estadocivilnome');
  FDQryCheck.ParamByName('estadocivilnome').AsString := txtEstCivil.Text;
  FDQryCheck.Open;

 if not (FDQryCheck.IsEmpty) then
   begin
    showMessage('Estado Civil já cadastrado');
    txtEstCivil.Text := '';
    exit;
   end;

   //Insere novo Estado Civil
   FDQryInsUp.Close;
   FDQryInsUp.SQL.Clear;
   FDQryInsUp.SQL.Add('insert into estadocivil (estadocivilnome) values (:estadocivilnome)');
   FDQryInsUp.ParamByName('estadocivilnome').AsString := txtEstCivil.Text;
   FDQryInsUp.ExecSQL;

   showMessage('Sucesso ao gravar');
   txtEstCivil.Text := '';

end;

end.
