unit unitCadastroPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDBEdit, System.ImageList,
  Vcl.ImgList, cxDropDownEdit, cxGroupBox, cxRadioGroup, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, RegularExpressions;

type
  TfrmCadastroPessoa = class(TForm)
    pnlFundo: TPanel;
    pnlBotoes: TPanel;
    btnConfirma: TBitBtn;
    btnCancela: TBitBtn;
    pnlInputs: TPanel;
    pgcCadPessoa: TPageControl;
    tsImputs: TTabSheet;
    tsEndereco: TTabSheet;
    tsTelefoen: TTabSheet;
    pnlInput: TPanel;
    dsPessoa: TDataSource;
    dsTelefone: TDataSource;
    dsEndereco: TDataSource;
    lblCod: TLabel;
    Timer1: TTimer;
    lblcpfcnpj: TLabel;
    lblNome: TLabel;
    pnlConsultaCPF: TPanel;
    pnlBotoesCpf: TPanel;
    btnAtualizaCaptchaCPF: TBitBtn;
    btnCancelaConsultaCPF: TBitBtn;
    btnConsultaCPF: TBitBtn;
    pnlCaptchaCPFconsulta: TPanel;
    imgCapchaCPF: TImage;
    lbl2: TLabel;
    pnledtCaptchaCPF: TPanel;
    pnlEdtCapchaCPF: TPanel;
    edtCapchaCPF: TEdit;
    pnlfundodata: TPanel;
    pnledtdatanas: TPanel;
    edtdatanasci: TcxMaskEdit;
    pnlConsultaCNPJ: TPanel;
    Panel1: TPanel;
    btnAtualiza: TBitBtn;
    btnCancelaConsultaCNPJ: TBitBtn;
    btnConfirmaConsultaCNPJ: TBitBtn;
    pnlCaptcha: TPanel;
    imgCaptcha: TImage;
    lblInformeCaptcha: TLabel;
    pnlEdtCaptcha: TPanel;
    pnledttextoCaptch: TPanel;
    edtCaptcha: TEdit;
    pnledtCPF: TPanel;
    btnPesquisaCpfCnpj: TSpeedButton;
    edtCpfCnpj: TcxDBTextEdit;
    edtCodigo: TcxDBTextEdit;
    edtNome: TcxDBTextEdit;
    lblNomeFantasia: TLabel;
    edtNomeFantasia: TcxDBTextEdit;
    lblEmail: TLabel;
    edtEmail: TcxDBTextEdit;
    grpEmpresaEndere�o: TGroupBox;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    grpDados: TGroupBox;
    grpSexo: TcxDBRadioGroup;
    grpStatus: TcxDBRadioGroup;
    mskedtCep: TcxDBMaskEdit;
    edtLougradouro: TcxDBTextEdit;
    edtNumero: TcxDBTextEdit;
    edtComplemento: TcxDBTextEdit;
    edtBairro: TcxDBTextEdit;
    cbbEstado: TcxDBComboBox;
    edtCidade: TcxDBTextEdit;
    dsCidade: TDataSource;
    edtIbge: TcxDBTextEdit;
    btnAddEndereco: TBitBtn;
    btnRemoveTelefone: TBitBtn;
    grpTelefone: TGroupBox;
    edtTelefone: TcxDBTextEdit;
    lblTelefone: TLabel;
    grpTipoTelefone: TcxDBRadioGroup;
    gridViewEndereco: TcxGridDBTableView;
    gridLevelEndereco: TcxGridLevel;
    gridEndereco: TcxGrid;
    grpTipo: TcxDBRadioGroup;
    btnSalvarEndereco: TBitBtn;
    procedure edtCpfCnpj1Exit(Sender: TObject);
    procedure btnConsultaCNPJClick(Sender: TObject);
    procedure btnConfirmaConsultaCNPJClick(Sender: TObject);
    procedure btnConsultaCPFClick(Sender: TObject);
    procedure edtCpfCnpjExit(Sender: TObject);
    procedure edtCpfCnpjKeyPress(Sender: TObject; var Key: Char);
    procedure btnPesquisaCpfCnpjClick(Sender: TObject);
    procedure btnAtualizaClick(Sender: TObject);
    procedure btnCancelaConsultaCNPJClick(Sender: TObject);
    procedure edtTelefonePropertiesChange(Sender: TObject);
    procedure btnCancelaConsultaCPFClick(Sender: TObject);
    procedure btnAtualizaCaptchaCPFClick(Sender: TObject);
    procedure btnSalvarEnderecoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtEmailExit(Sender: TObject);
  private
    { Private declarations }
  public
  var operacao : Integer ;
    { Public declarations }
  end;

var
  frmCadastroPessoa: TfrmCadastroPessoa;

implementation
  uses utils,unitDM, ACBrUtil,UEndereco, UCidade, UPessoa,unitPrincipal;

{$R *.dfm}

procedure TfrmCadastroPessoa.btnPesquisaCpfCnpjClick(Sender: TObject);
var
  MR: TModalResult;
  cUF: Integer;
begin
     if (Length(alltrim(edtCpfCnpj.Text)) = 14) then
     begin
           if ValidaCPF(SomenteNumeros(edtCpfCnpj.Text)) then
           begin
                pnlConsultaCPF.Visible:=True;
                pnlFundo.Enabled:=False;
                pnlConsultaCPF.Left:=Trunc((Width-pnlConsultaCPF.Width)/2);
                pnlConsultaCPF.Top:=Trunc((Height-pnlConsultaCPF.Height)/2);
                Timer1.Enabled:= True;
                edtCapchaCPF.SetFocus;
           end
           else
               edtCpfCnpj.SetFocus;
     end
     else if  (Length(alltrim(edtCpfCnpj.Text)) = 18)  then
     begin
           if ValidaCNPJ(SomenteNumeros(edtCpfCnpj.Text)) then
           begin
                pnlConsultaCNPJ.Visible:=True;
                pnlFundo.Enabled:=False;
                pnlConsultaCNPJ.Left:=Trunc((Width-pnlConsultaCNPJ.Width)/2);
                pnlConsultaCNPJ.Top:=Trunc((Height-pnlConsultaCNPJ.Height)/2);
                Timer1.Enabled:= True;
                edtCaptcha.SetFocus;
           end
           else
               edtCpfCnpj.SetFocus;
     end;
end;

procedure TfrmCadastroPessoa.btnAtualizaCaptchaCPFClick(Sender: TObject);
var Stream: TMemoryStream; ImgArq: String;
begin
     Stream := TMemoryStream.Create;
     try
              DM.ACBrConsultaCPF1.Captcha(Stream);
              ImgArq := ExtractFilePath(ParamStr(0))+PathDelim+'captch.png';
              Stream.SaveToFile( ImgArq );
              imgCapchaCPF.Picture.LoadFromFile( ImgArq );

              edtCapchaCPF.Clear;
              edtCapchaCPF.SetFocus;
     finally
              Stream.Free;
     end;
end;

procedure TfrmCadastroPessoa.btnAtualizaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  ImgName: String;
begin
     ImgName := ApplicationPath+'captcha.png';
     Stream := TMemoryStream.Create;
     try
            DM.ACBrConsultaCNPJ1.Captcha(Stream);
            Stream.SaveToFile(ImgName);
            imgCaptcha.Picture.LoadFromFile(ImgName);

            edtCaptcha.Clear;
            edtCaptcha.SetFocus;
     finally
            Stream.Free;
     end;
end;

procedure TfrmCadastroPessoa.btnCancelaClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmCadastroPessoa.btnCancelaConsultaCNPJClick(Sender: TObject);
begin
     pnlFundo.Enabled:=True;
     edtCpfCnpj.SetFocus;
     pnlConsultaCNPJ.Visible:=False;
end;

procedure TfrmCadastroPessoa.btnCancelaConsultaCPFClick(Sender: TObject);
begin
     pnlFundo.Enabled:=True;
     edtCpfCnpj.SetFocus;
     pnlConsultaCPF.Visible:=False;
end;

procedure TfrmCadastroPessoa.btnConfirmaClick(Sender: TObject);
var
  NovaPessoa: TPessoa;
begin
     NovaPessoa := TPessoa.Create;
     try
            NovaPessoa.NOME := edtNome.Text;
            NovaPessoa.NOMEFANTASIA := edtNomeFantasia.Text;
            NovaPessoa.CPFCNPJ := edtCpfCnpj.Text;
            NovaPessoa.TIPOPESSOA := grpTipo.ItemIndex;
            NovaPessoa.EMAIL := edtEmail.Text;
            NovaPessoa.SEXO := 1; // Substitua pelo c�digo correspondente ao sexo
            NovaPessoa.STATUS := 1; // Substitua pelo c�digo correspondente ao status

            // Chamar o m�todo Inserir para adicionar a nova pessoa
            NovaPessoa.Inserir;
     finally
            NovaPessoa.Free;
     end;
end;

procedure TfrmCadastroPessoa.btnConfirmaConsultaCNPJClick(Sender: TObject);
var
  I: Integer;
begin
     if edtCaptcha.Text <> '' then
     begin
          with DM.ACBrConsultaCNPJ1 do
          begin
              if Consulta(edtCpfCnpj.Text, edtCaptcha.Text,true ) then
              begin
                   edtnome.Text              := RazaoSocial;
                   if not( Fantasia.Contains('***')) then
                      edtNomeFantasia.Text   := Fantasia;
                   edtLougradouro.Text       := Endereco;
                   edtNumero.Text            := Numero;
                   edtcomplemento.Text       := Complemento;
                   mskedtCep.Text            := CEP;
                   edtbairro.Text            := Bairro;
                   cbbestado.ItemIndex       := cbbestado.Properties.Items.IndexOf(UF);
                   edtTelefone.Text          := alltrim(Telefone);
                   edtcidade.text            := cidade;

                   edtemail.Text         := EndEletronico;
                   grpTipo.ItemIndex := 0;

                   if Trim(IBGE_Municipio) <> '' then
                      edtIbge.Text   := Trim(IBGE_Municipio)
                   else
                   begin
                        if Length(Trim(mskedtCep.Text)) = 9 then
                        begin
                             DM.ConfiguraBuscaCEP(8);
                             try
                                   DM.ACBrCEP1.BuscarPorCEP(SomenteNumeros(mskedtCep.Text));
                             except On E : Exception do
                                    MessageDlg('Erro: '+E.Message+'!',mtInformation,[mbOk],0);
                             end;
                        end;
                   end;

                   pnlFundo.Enabled:=True;
                   edtCpfCnpj.SetFocus;
                   pnlConsultaCNPJ.Visible:=False;
              end;
          end;
     end
     else
     begin
          MessageDlg('� necess�rio digitar o captcha.',mtInformation,[mbOk],0);
          edtCaptcha.SetFocus;
     end;

end;

procedure TfrmCadastroPessoa.btnConsultaCNPJClick(Sender: TObject);
var
  MR: TModalResult;
  cUF: Integer;
begin
     if (Length(alltrim(edtCpfCnpj.Text)) = 14) then
     begin
           if ValidaCPF(SomenteNumeros(edtCpfCnpj.Text)) then
           begin
                pnlConsultaCPF.Visible:=True;
                pnlFundo.Enabled:=False;
                pnlConsultaCPF.Left:=Trunc((Width-pnlConsultaCPF.Width)/2);
                pnlConsultaCPF.Top:=Trunc((Height-pnlConsultaCPF.Height)/2);
                Timer1.Enabled:= True;
                edtCapchaCPF.SetFocus;
           end
           else
               edtCpfCnpj.SetFocus;
     end
     else if  (Length(alltrim(edtCpfCnpj.Text)) = 18)  then
     begin
           if ValidaCNPJ(SomenteNumeros(edtCpfCnpj.Text)) then
           begin
                pnlConsultaCNPJ.Visible:=True;
                pnlFundo.Enabled:=False;
                pnlConsultaCNPJ.Left:=Trunc((Width-pnlConsultaCNPJ.Width)/2);
                pnlConsultaCNPJ.Top:=Trunc((Height-pnlConsultaCNPJ.Height)/2);
                Timer1.Enabled:= True;
                edtCaptcha.SetFocus;
           end
           else
               edtCpfCnpj.SetFocus;
     end;
end;

procedure TfrmCadastroPessoa.btnConsultaCPFClick(Sender: TObject);
begin
     if (alltrim(edtCapchaCPF.Text) <> '') and (Length(alltrim(edtdatanasci.Text))>2) then
     begin
          if DM.ACBrConsultaCPF1.Consulta(edtCpfCnpj.Text, edtdatanasci.Text, edtCapchaCPF.Text) then
          begin
                edtnome.Text      := DM.ACBrConsultaCPF1.Nome;
                edtNomeFantasia.Text  := DM.ACBrConsultaCPF1.Nome;
                pnlFundo.Enabled:=True;
                edtCpfCnpj.SetFocus;
                pnlConsultaCPF.Visible:=False;
                grpStatus.ItemIndex := 0;
          end;
     end
     else
     begin
          if (edtCapchaCPF.Text = '') then
          begin
               MessageDlg('� necess�rio digitar o captcha.',mtInformation,[mbOk],0);
               edtCapchaCPF.SetFocus;
          end
          else if (Length(alltrim(edtdatanasci.Text))<=2) then
          begin
               MessageDlg('� necess�rio digitar o captcha.',mtInformation,[mbOk],0);
               edtdatanasci.SetFocus;
          end;
     end;
end;

procedure TfrmCadastroPessoa.btnSalvarEnderecoClick(Sender: TObject);
var
  NovoEndereco: TEndereco;
  Cidade: TCidade;
begin
     Cidade := TCidade.Create;
     try
             Cidade.ConsultarPorCidade(edtCidade.Text);

             // Verificar se a cidade j� existe no banco de dados
             if Length(alltrim(Cidade.Cidade)) = 0 then
             begin
                  // Se a cidade n�o existe, insere a cidade
                  Cidade.Cidade := edtCidade.Text;
                  Cidade.UF     := cbbEstado.ItemIndex;
                  Cidade.IBGE   := edtIbge.Text;
                  Cidade.Inserir;
                  Cidade.ConsultarPorCidade(edtCidade.Text);
             end;

             NovoEndereco := TEndereco.Create;
             try
                    NovoEndereco.Pessoa := Integer.Parse(edtCodigo.Text);
                    NovoEndereco.CEP := mskedtCep.Text;
                    NovoEndereco.Logradouro := edtLougradouro.Text;
                    NovoEndereco.Numero := edtNumero.Text;
                    NovoEndereco.Bairro := edtBairro.Text;
                    NovoEndereco.Complemento := edtComplemento.Text;
                    NovoEndereco.Cidade := Cidade.Codigo;

                    NovoEndereco.Inserir;
             finally
                    NovoEndereco.Free;
             end;
     finally
            Cidade.Free;
     end;
end;

procedure TfrmCadastroPessoa.edtCpfCnpj1Exit(Sender: TObject);
var num:string;
begin
     if Length(Trim(edtCpfCnpj.Text))> 0 then
     begin
          num:=SomenteNumeros(edtCpfCnpj.Text);
          if (not(ValidaCPF(num))) and (Length(num)=11) then
          begin
               MessageDlg('CPF: '+edtCpfCnpj.Text +' � invalido!',mtInformation,[mbOk],0);
               edtCpfCnpj.Text:='';
               edtCpfCnpj.SetFocus;
          end
          else if (not(ValidaCNPJ(num))) and (Length(num)=14) then
          begin
               MessageDlg('CNPJ: '+edtCpfCnpj.Text +' � invalido!',mtInformation,[mbOk],0);
               edtCpfCnpj.Text:='';
               edtCpfCnpj.SetFocus;
          end;
     end;

     if (Length(edtCpfCnpj.Text) = 11) or (Length(edtCpfCnpj.Text) = 14) then
         edtCpfCnpj.Text:=formataCpfCnpj(edtCpfCnpj.Text);
end;

procedure TfrmCadastroPessoa.edtCpfCnpjExit(Sender: TObject);
var num:string;
begin
     if Length(Trim(edtCpfCnpj.Text))> 0 then
     begin
          num:=SomenteNumeros(edtCpfCnpj.Text);
          if (not(ValidaCPF(num))) and (Length(num)=11) then
          begin
               MessageDlg('CPF: '+edtCpfCnpj.Text +' � invalido!',mtInformation,[mbOk],0);
               edtCpfCnpj.Text:='';
               edtCpfCnpj.SetFocus;
          end
          else if (not(ValidaCNPJ(num))) and (Length(num)=14) then
          begin
               MessageDlg('CNPJ: '+edtCpfCnpj.Text +' � invalido!',mtInformation,[mbOk],0);
               edtCpfCnpj.Text:='';
               edtCpfCnpj.SetFocus;
          end;
     end;

     if (Length(edtCpfCnpj.Text) = 11) or (Length(edtCpfCnpj.Text) = 14) then
         edtCpfCnpj.Text:=formataCpfCnpj(edtCpfCnpj.Text);
end;

procedure TfrmCadastroPessoa.edtCpfCnpjKeyPress(Sender: TObject; var Key: Char);
var temp:string;  i:Integer;
begin
     if not( key in['0'..'9',#08,#13,#27] ) then
        key:=#0;
     if (Key <> #0) and (Key <> #08)  then
     begin
          if Length(Trim(edtCpfCnpj.Text)) = 3 then
          begin
               edtCpfCnpj.Text:=edtCpfCnpj.Text+'.';
               edtCpfCnpj.SelStart := Length( edtCpfCnpj.Text );
          end
          else if Length(Trim(edtCpfCnpj.Text)) = 7 then
          begin
               edtCpfCnpj.Text:=edtCpfCnpj.Text+'.';
               edtCpfCnpj.SelStart := Length( edtCpfCnpj.Text );
          end
          else if Length(Trim(edtCpfCnpj.Text)) = 11 then
          begin
               edtCpfCnpj.Text:=edtCpfCnpj.Text+'-';
               edtCpfCnpj.SelStart := Length( edtCpfCnpj.Text );
          end;
          temp:= SomenteNumeros(Trim(edtCpfCnpj.Text));
          if (Length(temp) = 12) then
          begin
               edtCpfCnpj.Text:=Copy(temp,0,2)+'.'+Copy(temp,3,3)+'.'+Copy(temp,6,3)+'/'+Copy(temp,9,4)+'-';
               edtCpfCnpj.SelStart := Length( edtCpfCnpj.Text );
          end
     end;
end;

procedure TfrmCadastroPessoa.edtEmailExit(Sender: TObject);
const
  EmailPattern = '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
begin
     if Length(alltrim(edtEmail.Text))> 0 then
     begin
          if not (TRegEx.IsMatch(edtEmail.Text, EmailPattern)) then
            MessageDlg('E-mail: '+edtEmail.Text +' � invalido!',mtInformation,[mbOk],0);
     end;

end;

procedure TfrmCadastroPessoa.edtTelefonePropertiesChange(Sender: TObject);
var PhoneNumber, FormattedNumber: string;
    i: Integer;
begin
     // Remove caracteres n�o num�ricos do n�mero de telefone
     PhoneNumber := StringReplace(edtTelefone.Text, ' ', '', [rfReplaceAll]);

     // Verifica se o n�mero � maior do que 11 d�gitos e reduz, se necess�rio
     if Length(PhoneNumber) > 11 then
        PhoneNumber := Copy(PhoneNumber, 1, 11);

     // Formata o n�mero com a m�scara (99) 99999-9999
     FormattedNumber := '';

     for i := 1 to Length(PhoneNumber) do
     begin
          FormattedNumber := FormattedNumber + PhoneNumber[i];
          if i = 2 then
            FormattedNumber := FormattedNumber + ' ';
          if (i = 7) or (i = 11) then
            FormattedNumber := FormattedNumber + '-';
     end;

     edtTelefone.Text := FormattedNumber;
     edtTelefone.SelStart := Length(FormattedNumber);
end;

procedure TfrmCadastroPessoa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      frmPrincipal.formAbert :=False;
      Action := caFree;
end;

procedure TfrmCadastroPessoa.FormCreate(Sender: TObject);
begin
     pgcCadPessoa.TabWidth:=300;
end;

end.