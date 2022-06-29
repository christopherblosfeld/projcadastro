program projcadastro;

uses
  Vcl.Forms,
  telainicial in 'telainicial.pas' {frmTelaInicial},
  cadcliente in 'cadcliente.pas' {frmCadCliente},
  cadcidade in 'cadcidade.pas' {frmCidade},
  cadestado in 'cadestado.pas' {frmCadEstado},
  cadocupacao in 'cadocupacao.pas' {frmOcupacao},
  cadestadocivil in 'cadestadocivil.pas' {frmEstCivil},
  consclientes in 'consclientes.pas' {frmConsCliente},
  conscidades in 'conscidades.pas' {frmConsCidades},
  consestados in 'consestados.pas' {frmConsEst},
  consocup in 'consocup.pas' {frmConsOcup},
  consEstCivil in 'consEstCivil.pas' {frmConsEstCivil},
  cadClienteNovo in 'cadClienteNovo.pas' {frmCadClienteNovo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTelaInicial, frmTelaInicial);
  Application.CreateForm(TfrmCadCliente, frmCadCliente);
  Application.CreateForm(TfrmCidade, frmCidade);
  Application.CreateForm(TfrmCadEstado, frmCadEstado);
  Application.CreateForm(TfrmOcupacao, frmOcupacao);
  Application.CreateForm(TfrmEstCivil, frmEstCivil);
  Application.CreateForm(TfrmConsCliente, frmConsCliente);
  Application.CreateForm(TfrmConsCidades, frmConsCidades);
  Application.CreateForm(TfrmConsEst, frmConsEst);
  Application.CreateForm(TfrmConsOcup, frmConsOcup);
  Application.CreateForm(TfrmConsEstCivil, frmConsEstCivil);
  Application.CreateForm(TfrmCadClienteNovo, frmCadClienteNovo);
  Application.Run;
end.
