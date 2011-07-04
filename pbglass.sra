$PBExportHeader$pbglass.sra
$PBExportComments$Generated Application Object
forward
global type pbglass from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type pbglass from application
string appname = "pbglass"
end type
global pbglass pbglass

on pbglass.create
appname="pbglass"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on pbglass.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open ( w_main )
end event

