unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxLabel, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    pnlFundo: TPanel;
    pnlMenu: TPanel;
    pnlTela: TPanel;
    cxlblpropaganda: TcxLabel;
    btnMenu: TSpeedButton;
    btnListagem: TSpeedButton;
    btnCadastro: TSpeedButton;
    btnRelatorio: TSpeedButton;
    procedure btnMenuClick(Sender: TObject);
    procedure btnListagemClick(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    var formAbert: Boolean;
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses unitCadastroPessoa,unitListagem, unitDM;



{$R *.dfm}

procedure TfrmPrincipal.btnCadastroClick(Sender: TObject);
begin
     if not formAbert then
     begin
          formAbert := True;
          frmCadastroPessoa := TfrmCadastroPessoa.Create(Self);
          DM.tabPessoa.Active := True;
          frmCadastroPessoa.dsPessoa.DataSet.Append;
          frmCadastroPessoa.pnlFundo.Parent := pnlTela;
          frmCadastroPessoa.Align := alClient;
          frmCadastroPessoa.ShowHint:= True;
     end;
end;

procedure TfrmPrincipal.btnListagemClick(Sender: TObject);
var frmListagem: TfrmListagem;
begin
     if not formAbert then
     begin
          formAbert := True;
          frmListagem := TfrmListagem.Create(Self);
          frmListagem.pnlFundo.Parent := pnlTela;
          frmListagem.Align := alClient;
          frmListagem.ShowHint:= True;
     end;
end;

procedure TfrmPrincipal.btnMenuClick(Sender: TObject);
begin
     btnListagem.Top  := btnMenu.Top+btnMenu.Height;
     btnCadastro.Top  := btnListagem.Top+btnListagem.Height;
     btnRelatorio.Top := btnCadastro.Top+btnCadastro.Height;

     btnListagem.Visible   := not btnListagem.Visible;
     btnCadastro.Visible   := not btnCadastro.Visible;
     btnRelatorio.Visible  := not btnRelatorio.Visible;
     if btnListagem.Visible then
        pnlMenu.Width:=120
     else
         pnlMenu.Width:=60;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
     formAbert:=False;
end;

End.
