$PBExportHeader$u_dw.sru
forward
global type u_dw from datawindow
end type
end forward

global type u_dw from datawindow
integer width = 686
integer height = 400
string title = "none"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type
global u_dw u_dw

type variables
PUBLIC:

n_cst_dwsrv_cue_banner	inv_cuebanner
end variables

forward prototypes
public subroutine of_setcuebanner (boolean ab_switch)
end prototypes

public subroutine of_setcuebanner (boolean ab_switch);if ab_switch then
	if not isValid ( inv_cuebanner ) then
		inv_cuebanner = create n_cst_dwsrv_cue_banner
		inv_cuebanner.of_setRequestor ( this )
	end if
else
	if isValid ( inv_cuebanner ) then
		destroy inv_cuebanner
	end if
end if
end subroutine

on u_dw.create
end on

on u_dw.destroy
end on

event destructor;of_setCueBanner ( false )
end event

