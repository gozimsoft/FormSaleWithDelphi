unit DMUnit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    TblRating: TFDQuery;
    TblProduct: TFDQuery;
    TblProductID_Product: TFDAutoIncField;
    TblProductName: TWideStringField;
    TblProductQuantity: TFloatField;
    TblProductQuantityMin: TFloatField;
    TblProductID_Rating: TIntegerField;
    TblProductNameUnit: TIntegerField;
    TblProductdatefin: TSQLTimeStampField;
    TblProductNameCompany: TWideStringField;
    TblProductimg: TBlobField;
    TblProductpricebuy: TFloatField;
    TblProductpricesale: TFloatField;
    TblProductpricegrou: TFloatField;
    TblProductid_stock: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
