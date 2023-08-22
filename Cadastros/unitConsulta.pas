unit unitConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TfrmConsulta = class(TForm)
    pnlConsultaCPF: TPanel;
    pnlBotoesCpf: TPanel;
    btnAtualizaCaptchaCPF: TBitBtn;
    btnCancelaConsultaCPF: TBitBtn;
    btnConsultaCPF: TBitBtn;
    pnlCaptchaCPFconsulta: TPanel;
    imgCapchaCPF: TImage;
    lbl2: TLabel;
    pnledtCaptchaCPF: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsulta: TfrmConsulta;

implementation

{$R *.dfm}

end.
