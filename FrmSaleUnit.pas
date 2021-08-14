unit FrmSaleUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Vcl.ExtCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, FrmProductUnit,
  JPEG;

type

  TBtnRating = class(TButton)

  private

  public
    procedure Click; override;
    procedure LoadProduct(id_Rating: Integer);

  var
    id_Rating: Integer;
  end;

  TFrmSale = class(TForm)
    DBGrid1: TDBGrid;
    TblOrder: TFDMemTable;
    TblOrderid_product: TIntegerField;
    TblOrdername: TStringField;
    TblOrderprice: TFloatField;
    TblOrderquantity: TFloatField;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ScrollBox1: TScrollBox;
    RatingPanel: TFlowPanel;
    ScrollBox2: TScrollBox;
    ProductPanel: TFlowPanel;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure LoadRating;
    procedure ClearProdcut;
    procedure AddProduct(aId_product: Integer; aName , aPrice : string );
  end;

var

  ListProduct: array of TFrmProduct;

  FrmSale: TFrmSale;

implementation

{$R *.dfm}

uses DMUnit;

procedure TFrmSale.AddProduct(aId_product: Integer; aName, aPrice : string
 );
begin

  with TblOrder do
  begin
    if Locate('id_product', aId_product, []) then
    begin
      Edit;
      FieldValues['Quantity'] := FieldValues['Quantity'] + 1;
    end
    else
    begin
      Insert;
      FieldValues['Quantity'] := 1;
      FieldValues['id_product'] := aId_product;
      FieldValues['price'] := aPrice;
      FieldValues['name'] := aName;
    end;
    Post;
  end;

end;

procedure TFrmSale.ClearProdcut;
var
  i: Integer;
begin

  for i := Low(ListProduct) to High(ListProduct) do
    ListProduct[i].Free;
  SetLength(ListProduct, 0);

end;

procedure TFrmSale.FormShow(Sender: TObject);
begin
  LoadRating;
end;

procedure TFrmSale.LoadRating;
var
  BtnRating: TBtnRating;
begin

  with DM.TblRating do
  begin
    Open();
    while not Eof do
    begin
      BtnRating := TBtnRating.Create(Self);
      BtnRating.Caption := FieldValues['name'];
      BtnRating.Parent := RatingPanel;
      BtnRating.Width := Length(FieldValues['name']) * 10;
      BtnRating.id_Rating := FieldValues['id_Rating'];
      Next;
    end;
    Close;
  end;

end;

{ TBtnRating }

procedure TBtnRating.Click;
begin
  inherited;

  LoadProduct(id_Rating);

end;

procedure TBtnRating.LoadProduct(id_Rating: Integer);
var
  FrmProduct: TFrmProduct;
  s: TStream;
begin

  FrmSale.ClearProdcut;
  with DM.TblProduct do
  begin
    ParamByName('id_rating').Value := id_Rating;
    Open();
    while not Eof do
    begin
      FrmProduct := TFrmProduct.Create(Self);
      FrmProduct.LBName.Caption := FieldValues['name'];
      FrmProduct.LBPrice.Caption := FieldValues['PriceSale'];
      FrmProduct.id_product := FieldValues['id_product'];
      FrmProduct.Name := 'FrmProduct' + FieldByName('id_product').AsString;
      s := CreateBlobStream(FieldByName('img'), bmRead);
      try
        s.Position := 0;
        FrmProduct.ImgProduct.Picture.LoadFromStream(s);
      finally
        s.Free;
      end;
      FrmProduct.Parent := FrmSale.ProductPanel;
      ListProduct := ListProduct + [FrmProduct];
      Next;
    end;
    Close;
  end;

end;

end.
