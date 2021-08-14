object FrmSale: TFrmSale
  Left = 0
  Top = 0
  Caption = #1588#1575#1588#1577' '#1605#1576#1610#1593#1575#1578
  ClientHeight = 561
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 337
    Height = 561
    Align = alLeft
    BiDiMode = bdRightToLeft
    DataSource = DataSource1
    ParentBiDiMode = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'price'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 103
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'quantity'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 337
    Top = 0
    Width = 497
    Height = 561
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 1
      Top = 106
      Width = 495
      Height = 454
      Align = alClient
      BiDiMode = bdRightToLeft
      Caption = #1575#1604#1605#1606#1578#1580#1575#1578
      ParentBiDiMode = False
      TabOrder = 0
      object ScrollBox2: TScrollBox
        Left = 2
        Top = 15
        Width = 491
        Height = 437
        Align = alClient
        TabOrder = 0
        object ProductPanel: TFlowPanel
          Left = 0
          Top = 0
          Width = 487
          Height = 41
          Align = alTop
          AutoSize = True
          FlowStyle = fsRightLeftTopBottom
          TabOrder = 0
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 495
      Height = 105
      Align = alTop
      BiDiMode = bdRightToLeft
      Caption = #1575#1604#1578#1589#1606#1610#1601
      ParentBiDiMode = False
      TabOrder = 1
      object ScrollBox1: TScrollBox
        Left = 2
        Top = 15
        Width = 491
        Height = 88
        Align = alClient
        TabOrder = 0
        object RatingPanel: TFlowPanel
          Left = 0
          Top = 0
          Width = 487
          Height = 27
          Align = alTop
          AutoSize = True
          FlowStyle = fsRightLeftTopBottom
          TabOrder = 0
        end
      end
    end
  end
  object TblOrder: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 216
    Top = 224
    object TblOrderid_product: TIntegerField
      FieldName = 'id_product'
    end
    object TblOrdername: TStringField
      FieldName = 'name'
    end
    object TblOrderprice: TFloatField
      FieldName = 'price'
    end
    object TblOrderquantity: TFloatField
      FieldName = 'quantity'
    end
  end
  object DataSource1: TDataSource
    DataSet = TblOrder
    Left = 264
    Top = 168
  end
end
