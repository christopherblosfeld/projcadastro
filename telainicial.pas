unit telainicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, Vcl.Menus;

type
  TfrmTelaInicial = class(TForm)
    btnCadCliente: TButton;
    btnCadCidade: TButton;
    btnCadEstado: TButton;
    btnCadOcupacao: TButton;
    btnCadEstCivil: TButton;
    lbCadastros: TLabel;
    lbConsultas: TLabel;
    FDConnection1: TFDConnection;
    btnConsCli: TButton;
    btnConsCid: TButton;
    btnConsEst: TButton;
    btnConsOcp: TButton;
    btnConsEstC: TButton;
    procedure btnCadClienteClick(Sender: TObject);
    procedure btnCadCidadeClick(Sender: TObject);
    procedure btnCadEstadoClick(Sender: TObject);
    procedure btnCadOcupacaoClick(Sender: TObject);
    procedure btnCadEstCivilClick(Sender: TObject);
    procedure btnConsCliClick(Sender: TObject);
    procedure btnConsCidClick(Sender: TObject);
    procedure btnConsEstClick(Sender: TObject);
    procedure btnConsOcpClick(Sender: TObject);
    procedure btnConsEstCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaInicial: TfrmTelaInicial;

implementation

{$R *.dfm}

uses cadcliente, cadcidade, cadestado, cadocupacao, cadestadocivil,
  consclientes, conscidades, consestados, consocup, consEstCivil,
  cadClienteNovo;

procedure TfrmTelaInicial.btnCadCidadeClick(Sender: TObject);
begin
frmCidade.ShowModal;
end;

procedure TfrmTelaInicial.btnCadClienteClick(Sender: TObject);
begin
frmCadClienteNovo.ShowModal;
end;

procedure TfrmTelaInicial.btnCadEstadoClick(Sender: TObject);
begin
frmCadEstado.ShowModal;
end;

procedure TfrmTelaInicial.btnCadEstCivilClick(Sender: TObject);
begin
frmEstCivil.ShowModal;
end;

procedure TfrmTelaInicial.btnCadOcupacaoClick(Sender: TObject);
begin
frmOcupacao.ShowModal;
end;

procedure TfrmTelaInicial.btnConsCidClick(Sender: TObject);
begin
frmConsCidades.ShowModal;
end;

procedure TfrmTelaInicial.btnConsCliClick(Sender: TObject);
begin
frmConsCliente.ShowModal;
end;

procedure TfrmTelaInicial.btnConsEstCClick(Sender: TObject);
begin
frmConsEstCivil.ShowModal;
end;

procedure TfrmTelaInicial.btnConsEstClick(Sender: TObject);
begin
frmConsEst.ShowModal;
end;

procedure TfrmTelaInicial.btnConsOcpClick(Sender: TObject);
begin
frmConsOcup.ShowModal;
end;

end.
