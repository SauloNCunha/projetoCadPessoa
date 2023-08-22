program cadPessoa;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {frmPrincipal},
  unitDM in 'DM\unitDM.pas' {DM: TDataModule},
  unitCadastroPessoa in 'Cadastros\unitCadastroPessoa.pas' {frmCadastroPessoa},
  utils in 'Utils\utils.pas',
  UTelefone in 'Classes\UTelefone.pas',
  UEndereco in 'Classes\UEndereco.pas',
  UCidade in 'Classes\UCidade.pas',
  UPessoa in 'Classes\UPessoa.pas',
  unitListagem in 'Listagem\unitListagem.pas' {frmListagem},
  UConsultaPessoa in 'Classes\UConsultaPessoa.pas',
  unitCadastroEndeco in 'Cadastros\unitCadastroEndeco.pas' {frmCadastroEndereco},
  unitConsulta in 'Cadastros\unitConsulta.pas' {frmConsulta},
  unitConsultaCNPJ in 'Cadastros\unitConsultaCNPJ.pas' {frmConsultaCnpj},
  unitConsultaCPF in 'Cadastros\unitConsultaCPF.pas' {frmConsulta2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmListagem, frmListagem);
  Application.CreateForm(TfrmCadastroEndereco, frmCadastroEndereco);
  Application.CreateForm(TfrmConsulta, frmConsulta);
  Application.CreateForm(TfrmConsultaCnpj, frmConsultaCnpj);
  Application.CreateForm(TfrmConsulta2, frmConsulta2);
  Application.Run;
end.
