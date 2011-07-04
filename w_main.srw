$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type dw_1 from u_dw within w_main
end type
type hpb_1 from hprogressbar within w_main
end type
type r_dummy from rectangle within w_main
end type
type s_margin from structure within w_main
end type
end forward

type s_margin from structure
	long		leftWidth
	long		rightWidth
	long		topHeight
	long		bottomHeight
end type

global type w_main from window
integer width = 1426
integer height = 672
boolean titlebar = true
string title = "PB Login"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_1 dw_1
hpb_1 hpb_1
r_dummy r_dummy
end type
global w_main w_main

type prototypes
function integer DwmExtendFrameIntoClientArea ( ulong hwnd, ref s_margin rstr_margin ) library "dwmapi.dll"
function integer DwmIsCompositionEnabled (ref boolean flag) library "dwmapi.dll"


end prototypes

on w_main.create
this.dw_1=create dw_1
this.hpb_1=create hpb_1
this.r_dummy=create r_dummy
this.Control[]={this.dw_1,&
this.hpb_1,&
this.r_dummy}
end on

on w_main.destroy
destroy(this.dw_1)
destroy(this.hpb_1)
destroy(this.r_dummy)
end on

event open;s_margin	lstr_margin

lstr_margin.leftWidth = 1
lstr_margin.rightWidth = 1
lstr_margin.topHeight = 1
lstr_margin.bottomHeight = 50

r_dummy.x = 1
r_dummy.y = height - 300
r_dummy.height = 300
r_dummy.width = width

DwmExtendFrameIntoClientArea ( handle ( this ), ref lstr_margin )
end event

type dw_1 from u_dw within w_main
integer y = 24
integer width = 1376
integer height = 328
integer taborder = 10
string dataobject = "d_login"
boolean border = false
borderstyle borderstyle = stylebox!
end type

event constructor;call super::constructor;of_setCueBanner ( true )
inv_cuebanner.of_register ( "user", "Username" )
inv_cuebanner.of_register ( "pass", "Password" )

insertRow ( 0 )
end event

type hpb_1 from hprogressbar within w_main
integer y = 416
integer width = 1358
integer height = 104
unsignedinteger maxposition = 100
unsignedinteger position = 50
integer setstep = 10
end type

type r_dummy from rectangle within w_main
long linecolor = 33554432
integer linethickness = 4
integer x = 73
integer y = 296
integer width = 133
integer height = 76
end type

