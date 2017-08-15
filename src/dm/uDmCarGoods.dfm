object dmCarGoods: TdmCarGoods
  OldCreateOrder = False
  Height = 91
  Width = 205
  object FDQuery1: TFDQuery
    Connection = dmBase.FDConnection1
    Left = 32
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 128
    Top = 16
  end
end
