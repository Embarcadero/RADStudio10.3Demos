object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'VCLAnalytics'
  ClientHeight = 252
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    420
    252)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 420
    Height = 25
    Align = alTop
    Alignment = taCenter
    Caption = 'VCL AppAnalytics'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 162
  end
  object ControlFocusEdit: TEdit
    Left = 8
    Top = 40
    Width = 404
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    Text = 'Detects Control Focus'
  end
  object LaunchForm2Btn: TButton
    Left = 8
    Top = 67
    Width = 404
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Launch Form 2'
    TabOrder = 1
    OnClick = LaunchForm2BtnClick
  end
  object ExceptionBtn: TButton
    Left = 8
    Top = 98
    Width = 404
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Raise and Log Exception'
    TabOrder = 2
    OnClick = ExceptionBtnClick
  end
  object EnableBtn: TButton
    Left = 8
    Top = 129
    Width = 404
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Enable AppAnalytics Tracking'
    TabOrder = 3
    OnClick = EnableBtnClick
  end
  object CheckPermissionBtn: TButton
    Left = 8
    Top = 160
    Width = 404
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Check Permission'
    TabOrder = 4
    OnClick = CheckPermissionBtnClick
  end
  object AppAnalytics1: TAppAnalytics
    Active = False
    CacheSize = 500
    UpdateInterval = 600
    Options = [aoTrackStartup, aoTrackFormActivate, aoTrackControlFocus, aoTrackExceptions]
    PrivacyMessage.Strings = (
      'Privacy Notice:'
      ''
      
        'This application anonymously tracks your usage and sends it to u' +
        's for analysis. We use this analysis to make the software work b' +
        'etter for you.'
      ''
      
        'This tracking is completely anonymous. No personally identifying' +
        ' information is tracked, and nothing about your usage can be tra' +
        'cked back to you.'
      ''
      'Thank you for helping us to improve this software.')
    Left = 72
    Top = 200
  end
end
