unit unitConsultaCNPJ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unitConsulta, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit;

type
  TfrmConsultaCnpj = class(TfrmConsulta)
    pnlCampos: TPanel;
    pnlfundodata: TPanel;
    pnledtdatanas: TPanel;
    edtdatanasci: TcxMaskEdit;
    pnlEdtCapchaCPF: TPanel;
    edtCapchaCPF: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaCnpj: TfrmConsultaCnpj;

implementation

{$R *.dfm}

end.
