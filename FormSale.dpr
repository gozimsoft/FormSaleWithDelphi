program FormSale;

uses
  Vcl.Forms,
  FrmSaleUnit in 'FrmSaleUnit.pas' {FrmSale},
  DMUnit in 'DMUnit.pas' {DM: TDataModule},
  FrmProductUnit in 'FrmProductUnit.pas' {FrmProduct: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmSale, FrmSale);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
