unit unitConsultaCPF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unitConsulta, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmConsulta2 = class(TfrmConsulta)
    pnlEdtCaptcha: TPanel;
    pnledttextoCaptch: TPanel;
    edtCaptcha: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsulta2: TfrmConsulta2;

implementation

{$R *.dfm}

end.
