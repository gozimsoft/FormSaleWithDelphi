object DM: TDM
  OldCreateOrder = False
  Height = 490
  Width = 664
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Amar\Desktop\db.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 264
    Top = 144
  end
  object TblRating: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tblRating')
    Left = 272
    Top = 240
  end
  object TblProduct: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from TblProduct '
      'where id_rating = :id_rating')
    Left = 440
    Top = 264
    ParamData = <
      item
        Name = 'ID_RATING'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TblProductID_Product: TFDAutoIncField
      FieldName = 'ID_Product'
      Origin = 'ID_Product'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TblProductName: TWideStringField
      FieldName = 'Name'
      Origin = 'Name'
      Size = 255
    end
    object TblProductQuantity: TFloatField
      FieldName = 'Quantity'
      Origin = 'Quantity'
    end
    object TblProductQuantityMin: TFloatField
      FieldName = 'QuantityMin'
      Origin = 'QuantityMin'
    end
    object TblProductID_Rating: TIntegerField
      FieldName = 'ID_Rating'
      Origin = 'ID_Rating'
    end
    object TblProductNameUnit: TIntegerField
      FieldName = 'NameUnit'
      Origin = 'NameUnit'
    end
    object TblProductdatefin: TSQLTimeStampField
      FieldName = 'datefin'
      Origin = 'datefin'
    end
    object TblProductNameCompany: TWideStringField
      FieldName = 'NameCompany'
      Origin = 'NameCompany'
      Size = 255
    end
    object TblProductimg: TBlobField
      FieldName = 'img'
      Origin = 'img'
    end
    object TblProductpricebuy: TFloatField
      FieldName = 'pricebuy'
      Origin = 'pricebuy'
    end
    object TblProductpricesale: TFloatField
      FieldName = 'pricesale'
      Origin = 'pricesale'
    end
    object TblProductpricegrou: TFloatField
      FieldName = 'pricegrou'
      Origin = 'pricegrou'
    end
    object TblProductid_stock: TIntegerField
      FieldName = 'id_stock'
      Origin = 'id_stock'
    end
  end
end
