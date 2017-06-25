object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Your Username'
  ClientHeight = 101
  ClientWidth = 165
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ScreenSnap = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 147
    Height = 13
    Caption = 'You are currently logged in as:'
  end
  object Label2: TLabel
    Left = 10
    Top = 53
    Width = 107
    Height = 13
    Caption = 'The current domain is:'
  end
  object EdtUsername: TEdit
    Left = 8
    Top = 27
    Width = 147
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object EdtDomain: TEdit
    Left = 10
    Top = 72
    Width = 147
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
end
