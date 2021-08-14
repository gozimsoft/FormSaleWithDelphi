unit FrmProductUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFrmProduct = class(TFrame)
    LBName: TLabel;
    LBPrice: TLabel;
    ImgProduct: TImage;
    procedure ImgProductClick(Sender: TObject);
  private
    { Private declarations }
  public

  var
    id_product: Integer;
  end;

implementation

{$R *.dfm}

uses FrmSaleUnit;

procedure TFrmProduct.ImgProductClick(Sender: TObject);
begin
  FrmSale.AddProduct(id_product, LBName.Caption, LBPrice.Caption);
end;

end.
