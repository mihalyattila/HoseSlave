object OrderCommentForm: TOrderCommentForm
  Left = 551
  Top = 245
  Width = 679
  Height = 549
  BorderStyle = bsSizeToolWin
  Caption = 'OrderCommentForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 482
    Width = 663
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 294
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkCancel
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 337
    Height = 453
    Align = alLeft
    TabOrder = 1
    object DBRichEdit1: TDBRichEdit
      Left = 1
      Top = 17
      Width = 335
      Height = 435
      Align = alClient
      DataField = 'MellekletEng'
      DataSource = OrderDm.dsGetAllOrderComment
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      WordWrap = False
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 335
      Height = 16
      Align = alTop
      Caption = 'Angol'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 337
    Top = 0
    Width = 326
    Height = 453
    Align = alClient
    TabOrder = 2
    object DBRichEdit2: TDBRichEdit
      Left = 1
      Top = 17
      Width = 324
      Height = 435
      Align = alClient
      DataField = 'MellekletHu'
      DataSource = OrderDm.dsGetAllOrderComment
      ScrollBars = ssBoth
      TabOrder = 0
      WordWrap = False
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 324
      Height = 16
      Align = alTop
      Caption = 'Magyar'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 453
    Width = 663
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 3
    object Label1: TLabel
      Left = 128
      Top = 8
      Width = 35
      Height = 13
      Caption = 'Revizió'
      FocusControl = DBEdit1
    end
    object RevErrLabel: TLabel
      Left = 200
      Top = 5
      Width = 118
      Height = 20
      Alignment = taCenter
      Caption = 'Eltérõ revízió!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 2
      Width = 104
      Height = 25
      DataSource = OrderDm.dsGetAllOrderComment
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 168
      Top = 4
      Width = 25
      Height = 21
      Color = clSilver
      DataField = 'Revizio'
      DataSource = OrderDm.dsGetAllOrderComment
      ReadOnly = True
      TabOrder = 1
      OnChange = DBEdit1Change
    end
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'OrderCommentForm'
    MinMaxInfo.MinTrackHeight = 150
    MinMaxInfo.MinTrackWidth = 150
    Left = 24
    Top = 56
  end
  object PopupMenu1: TPopupMenu
    Left = 24
    Top = 96
  end
end
