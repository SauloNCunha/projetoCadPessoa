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
  cxGridTableView, cxGridDBTableView, cxGrid, RegularExpressions, MemDS,
  VirtualTable,System.Generics.Collections;

type
  TfrmCadastroPessoa = class(TForm)
    pnlFundo: TPanel;
    pnlBotoes: TPanel;
    btnConfirma: TBitBtn;
    btnCancela: TBitBtn;
    pnlInputs: TPanel;
    dsPessoa: TDataSource;
    dsTelefone: TDataSource;
    dsEndereco: TDataSource;
    Timer1: TTimer;
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
    dsCidade: TDataSource;
    vrtltblEndereco: TVirtualTable;
    EnderecoCEP: TStringField;
    EnderecoLOUGRADOURO: TStringField;
    EnderecoNUMERO: TStringField;
    EnderecoBAIRRO: TStringField;
    EnderecoCOMPLEMENTO: TStringField;
    EnderecoCIDADE: TStringField;
    pnlInput: TPanel;
    grpEmpresaEndereço: TGroupBox;
    pnlBotoesEndereco: TPanel;
    btnAddEndereco: TBitBtn;
    btnRemoveTelefone: TBitBtn;
    btnEditarEndereco: TBitBtn;
    gridEndereco: TcxGrid;
    gridViewEndereco: TcxGridDBTableView;
    cxgrdbclmnViewEnderecoCEP: TcxGridDBColumn;
    cxgrdbclmnViewEnderecoLOUGRADOURO: TcxGridDBColumn;
    cxgrdbclmnViewEnderecoNUMERO: TcxGridDBColumn;
    cxgrdbclmnViewEnderecoBAIRRO: TcxGridDBColumn;
    cxgrdbclmnViewEnderecoCOMPLEMENTO: TcxGridDBColumn;
    cxgrdbclmnViewEnderecoCIDADE: TcxGridDBColumn;
    gridLevelEndereco: TcxGridLevel;
    grpDados: TGroupBox;
    lblCod: TLabel;
    lblcpfcnpj: TLabel;
    lblEmail: TLabel;
    lblNome: TLabel;
    lblNomeFantasia: TLabel;
    edtCodigo: TcxDBTextEdit;
    edtEmail: TcxDBTextEdit;
    edtNome: TcxDBTextEdit;
    edtNomeFantasia: TcxDBTextEdit;
    pnledtCPF: TPanel;
    btnPesquisaCpfCnpj: TSpeedButton;
    edtCpfCnpj: TcxDBTextEdit;
    grpSexo: TcxDBRadioGroup;
    grpStatus: TcxDBRadioGroup;
    grpTipo: TcxDBRadioGroup;
    grpTelefone: TGroupBox;
    lblTelefone: TLabel;
    edtTelefone: TcxDBTextEdit;
    grpTipoTelefone: TcxDBRadioGroup;
    vrtltblEnderecoIBGE: TStringField;
    cxgrdbclmnViewEnderecoIBGE: TcxGridDBColumn;
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
    procedure btnEditarEnderecoClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtEmailExit(Sender: TObject);
    function retornaIndexUF(uf:string):Integer;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FUFDictionary: TDictionary<string, Integer>;
  public
    destructor Destroy; override;
  var operacao : Integer ;
    { Public declarations }
  end;

var
  frmCadastroPessoa: TfrmCadastroPessoa;

implementation
  uses utils,unitDM, ACBrUtil,UEndereco, UCidade, UPessoa,unitPrincipal,unitCadastroEndeco;

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
                frmCadastroPessoa.pnlConsultaCPF.Visible:=True;
                pnlFundo.Enabled:=False;
                frmCadastroPessoa.pnlConsultaCPF.Left:=Trunc((Width-frmCadastroPessoa.pnlConsultaCPF.Width)/2);
                frmCadastroPessoa.pnlConsultaCPF.Top:=Trunc((Height-frmCadastroPessoa.pnlConsultaCPF.Height)/2);
                Timer1.Enabled:= True;
                frmCadastroPessoa.edtCapchaCPF.SetFocus;
           end
           else
               edtCpfCnpj.SetFocus;
     end
     else if  (Length(alltrim(edtCpfCnpj.Text)) = 18)  then
     begin
           if ValidaCNPJ(SomenteNumeros(edtCpfCnpj.Text)) then
           begin
                frmCadastroPessoa.pnlConsultaCNPJ.Visible:=True;
                pnlFundo.Enabled:=False;
                frmCadastroPessoa.pnlConsultaCNPJ.Left:=Trunc((Width-frmCadastroPessoa.pnlConsultaCNPJ.Width)/2);
                frmCadastroPessoa.pnlConsultaCNPJ.Top:=Trunc((Height-frmCadastroPessoa.pnlConsultaCNPJ.Height)/2);
                Timer1.Enabled:= True;
                frmCadastroPessoa.edtCaptcha.SetFocus;
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
  NovoEndereco: TEndereco;
  Cidade: TCidade;
begin
     NovaPessoa := TPessoa.Create;
     try
            NovaPessoa.ConsultarPorCpfCnpj(edtCpfCnpj.Text);
            if Length(alltrim(NovaPessoa.Nome)) = 0 then
            begin
                  NovaPessoa.NOME := edtNome.Text;
                  NovaPessoa.NOMEFANTASIA := edtNomeFantasia.Text;
                  NovaPessoa.CPFCNPJ := edtCpfCnpj.Text;
                  NovaPessoa.TIPOPESSOA := grpTipo.ItemIndex;
                  NovaPessoa.EMAIL := edtEmail.Text;
                  NovaPessoa.SEXO := grpSexo.ItemIndex;
                  NovaPessoa.STATUS := grpStatus.ItemIndex;
                  NovaPessoa.Inserir;
            end
            else
            begin
                 NovaPessoa.NOME := edtNome.Text;
                 NovaPessoa.NOMEFANTASIA := edtNomeFantasia.Text;
                 NovaPessoa.CPFCNPJ := edtCpfCnpj.Text;
                 NovaPessoa.TIPOPESSOA := grpTipo.ItemIndex;
                 NovaPessoa.EMAIL := edtEmail.Text;
                 NovaPessoa.SEXO := grpSexo.ItemIndex;
                 NovaPessoa.STATUS := grpStatus.ItemIndex;
            end;
     finally
            NovaPessoa.Free;
     end;

     try
          try
                 vrtltblEndereco.First;
                 while  not vrtltblEndereco.Eof do
                 begin
                       Cidade := TCidade.Create;
                       try
                             Cidade.ConsultarPorCidade(vrtltblEndereco.FieldByName('CIDADE').AsString);

                                   // Verificar se a cidade já existe no banco de dados
                              if Length(alltrim(Cidade.Cidade)) = 0 then
                              begin
                                   // Se a cidade não existe, insere a cidade
                                   Cidade.Cidade := vrtltblEndereco.FieldByName('CIDADE').AsString;
                                   Cidade.UF     := retornaIndexUF(vrtltblEndereco.FieldByName('UF').AsString);
                                   Cidade.IBGE   := vrtltblEndereco.FieldByName('IBGE').AsString;
                                   Cidade.Inserir;
                                   Cidade.ConsultarPorCidade(vrtltblEndereco.FieldByName('CIDADE').AsString);
                              end;

                              NovoEndereco := TEndereco.Create;
                              try
                                          NovoEndereco.Pessoa := Integer.Parse(edtCodigo.Text);
                                          NovoEndereco.CEP := vrtltblEndereco.FieldByName('CEP').AsString;
                                          NovoEndereco.Logradouro := vrtltblEndereco.FieldByName('LOUGRADOURO').AsString;
                                          NovoEndereco.Numero := vrtltblEndereco.FieldByName('NUMERO').AsString;
                                          NovoEndereco.Bairro := vrtltblEndereco.FieldByName('BAIRRO').AsString;
                                          NovoEndereco.Complemento := vrtltblEndereco.FieldByName('COMPLEMENTO').AsString;
                                          NovoEndereco.Cidade := Cidade.Codigo;

                                          NovoEndereco.Inserir;
                              finally
                                          NovoEndereco.Free;
                              end;
                       finally
                                  Cidade.Free;
                       end;
                       vrtltblEndereco.Next;
                 end;
          finally
          end;
     except on E: Exception do
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
                   dsEndereco.DataSet.Insert;
                   dsEndereco.DataSet.FieldByName('LOUGRADOURO').AsString := Endereco;
                   dsEndereco.DataSet.FieldByName('NUMERO').AsString := Numero;
                   dsEndereco.DataSet.FieldByName('COMPLEMENTO').AsString := Complemento;
                   dsEndereco.DataSet.FieldByName('CEP').AsString:= CEP;
                   dsEndereco.DataSet.FieldByName('BAIRRO').AsString:= Bairro;
                   dsEndereco.DataSet.FieldByName('UF').AsInteger:= retornaIndexUF(UF);
                   dsEndereco.DataSet.FieldByName('CIDADE').AsString:= cidade;
                   edtTelefone.Text          := alltrim(Telefone);


                   edtemail.Text         := EndEletronico;
                   grpTipo.ItemIndex := 0;

                   if Trim(IBGE_Municipio) <> '' then
                     dsEndereco.DataSet.FieldByName('IBGE').AsString:=(IBGE_Municipio)
                   else
                   begin
                        if Length(Trim(CEP)) = 9 then
                        begin
                             DM.ConfiguraBuscaCEP(8);
                             try
                                   DM.ACBrCEP1.BuscarPorCEP(SomenteNumeros(CEP));
                             except On E : Exception do
                                    MessageDlg('Erro: '+E.Message+'!',mtInformation,[mbOk],0);
                             end;
                        end;
                   end;
                   dsEndereco.DataSet.Post;
                   pnlFundo.Enabled:=True;
                   edtCpfCnpj.SetFocus;
                   pnlConsultaCNPJ.Visible:=False;
              end;
          end;
     end
     else
     begin
          MessageDlg('É necessário digitar o captcha.',mtInformation,[mbOk],0);
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
               MessageDlg('É necessário digitar o captcha.',mtInformation,[mbOk],0);
               edtCapchaCPF.SetFocus;
          end
          else if (Length(alltrim(edtdatanasci.Text))<=2) then
          begin
               MessageDlg('É necessário digitar o captcha.',mtInformation,[mbOk],0);
               edtdatanasci.SetFocus;
          end;
     end;
end;

procedure TfrmCadastroPessoa.btnEditarEnderecoClick(Sender: TObject);
begin
     dsEndereco.Edit;
     frmCadastroEndereco:= TfrmCadastroEndereco.Create(Self);
     frmCadastroEndereco.ShowModal;
end;

procedure TfrmCadastroPessoa.edtCpfCnpj1Exit(Sender: TObject);
var num:string;
begin
     if Length(Trim(edtCpfCnpj.Text))> 0 then
     begin
          num:=SomenteNumeros(edtCpfCnpj.Text);
          if (not(ValidaCPF(num))) and (Length(num)=11) then
          begin
               MessageDlg('CPF: '+edtCpfCnpj.Text +' é invalido!',mtInformation,[mbOk],0);
               edtCpfCnpj.Text:='';
               edtCpfCnpj.SetFocus;
          end
          else if (not(ValidaCNPJ(num))) and (Length(num)=14) then
          begin
               MessageDlg('CNPJ: '+edtCpfCnpj.Text +' é invalido!',mtInformation,[mbOk],0);
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
               MessageDlg('CPF: '+edtCpfCnpj.Text +' é invalido!',mtInformation,[mbOk],0);
               edtCpfCnpj.Text:='';
               edtCpfCnpj.SetFocus;
          end
          else if (not(ValidaCNPJ(num))) and (Length(num)=14) then
          begin
               MessageDlg('CNPJ: '+edtCpfCnpj.Text +' é invalido!',mtInformation,[mbOk],0);
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
            MessageDlg('E-mail: '+edtEmail.Text +' é invalido!',mtInformation,[mbOk],0);
     end;

end;

procedure TfrmCadastroPessoa.edtTelefonePropertiesChange(Sender: TObject);
var PhoneNumber, FormattedNumber: string;
    i: Integer;
begin
     // Remove caracteres não numéricos do número de telefone
     PhoneNumber := StringReplace(edtTelefone.Text, ' ', '', [rfReplaceAll]);

     // Verifica se o número é maior do que 11 dígitos e reduz, se necessário
     if Length(PhoneNumber) > 11 then
        PhoneNumber := Copy(PhoneNumber, 1, 11);

     // Formata o número com a máscara (99) 99999-9999
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
     FUFDictionary := TDictionary<string, Integer>.Create;
     FUFDictionary.Add('AC', 0);
     FUFDictionary.Add('AL', 1);
     FUFDictionary.Add('AP', 2);
     FUFDictionary.Add('AM',3);
     FUFDictionary.Add('BA',4);
     FUFDictionary.Add('CE',5);
     FUFDictionary.Add('DF',6);
     FUFDictionary.Add('ES',7);
     FUFDictionary.Add('GO',8);
     FUFDictionary.Add('MA',9);
     FUFDictionary.Add('MT',10);
     FUFDictionary.Add('MS',11);
     FUFDictionary.Add('MG',12);
     FUFDictionary.Add('PA',13);
     FUFDictionary.Add('PB',14);
     FUFDictionary.Add('PR',15);
     FUFDictionary.Add('PE',16);
     FUFDictionary.Add('PI',17);
     FUFDictionary.Add('RJ',18);
     FUFDictionary.Add('RN',19);
     FUFDictionary.Add('RS',20);
     FUFDictionary.Add('RO',21);
     FUFDictionary.Add('RR',22);
     FUFDictionary.Add('SC',23);
     FUFDictionary.Add('SP',24);
     FUFDictionary.Add('SE',25);
     FUFDictionary.Add('TO',26);
end;

function TfrmCadastroPessoa.retornaIndexUF(uf:string):Integer;
begin
     if FUFDictionary.ContainsKey(uf) then
       Result := FUFDictionary[uf]
     else
         Result := -1;
end;

destructor TfrmCadastroPessoa.Destroy;
begin
  FUFDictionary.Free;
  inherited;
end;

end.
