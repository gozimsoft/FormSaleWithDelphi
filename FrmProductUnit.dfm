object FrmProduct: TFrmProduct
  AlignWithMargins = True
  Left = 0
  Top = 0
  Width = 120
  Height = 120
  Color = 16762237
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object LBName: TLabel
    Left = 0
    Top = 0
    Width = 120
    Height = 13
    Align = alTop
    Alignment = taCenter
    ExplicitWidth = 3
  end
  object LBPrice: TLabel
    Left = 0
    Top = 107
    Width = 120
    Height = 13
    Align = alBottom
    Alignment = taCenter
    ExplicitTop = 100
    ExplicitWidth = 3
  end
  object ImgProduct: TImage
    Left = 0
    Top = 13
    Width = 120
    Height = 94
    Align = alClient
    Stretch = True
    OnClick = ImgProductClick
    ExplicitTop = 19
    ExplicitWidth = 135
    ExplicitHeight = 120
  end
end
