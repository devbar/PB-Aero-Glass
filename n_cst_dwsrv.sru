$PBExportHeader$n_cst_dwsrv.sru
forward
global type n_cst_dwsrv from nonvisualobject
end type
end forward

global type n_cst_dwsrv from nonvisualobject
end type
global n_cst_dwsrv n_cst_dwsrv

type variables
protected:

datawindow	idw_requestor
end variables

forward prototypes
public subroutine of_setrequestor (datawindow adw_requestor)
end prototypes

public subroutine of_setrequestor (datawindow adw_requestor);idw_requestor = adw_requestor
end subroutine

on n_cst_dwsrv.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_dwsrv.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

