unit unitCadastroEndeco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxDropDownEdit, cxDBEdit, cxTextEdit, cxMaskEdit,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmCadastroEndereco = class(TForm)
    pnlFundo: TPanel;
    lbl18: TLabel;
    lbl15: TLabel;
    lbl11: TLabel;
    lbl13: TLabel;
    lbl12: TLabel;
    lbl14: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    pnlBotoes: TPanel;
    btnConfirma: TBitBtn;
    btnCancela: TBitBtn;
    cbbUf: TcxComboBox;
    edtendereco: TcxDBTextEdit;
    mskedtCep: TcxDBMaskEdit;
    edtNum: TcxDBTextEdit;
    edtComplemento: TcxDBTextEdit;
    edtBairro: TcxDBTextEdit;
    edtCidade: TcxDBTextEdit;
    edtIBGE: TcxDBTextEdit;
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var operacao:Integer;
  end;

var
  frmCadastroEndereco: TfrmCadastroEndereco;

implementation
uses
  Upessoa,UEndereco,UCidade,utils,unitCadastroPessoa;

{$R *.dfm}

procedure TfrmCadastroEndereco.btnCancelaClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmCadastroEndereco.btnConfirmaClick(Sender: TObject);
begin
     frmCadastroPessoa.dsEndereco.DataSet.FieldByName('UF').AsInteger:=cbbUf.Properties.Items.IndexOf(cbbUf.Text);
     frmCadastroPessoa.vrtltblEndereco.Post;
end;

procedure TfrmCadastroEndereco.FormShow(Sender: TObject);
begin
     if Length(alltrim(frmCadastroPessoa.dsEndereco.DataSet.FieldByName('UF').AsString))>0 then
        cbbUf.ItemIndex:= cbbUf.Properties.Items.IndexOf(frmCadastroPessoa.dsEndereco.DataSet.FieldByName('UF').AsString);
end;

end.
