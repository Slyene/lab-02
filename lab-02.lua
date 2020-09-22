--Chesnokov 474
lgi = require 'lgi'
--Chesnokov 474
gtk = lgi.Gtk
gtk.init()
--Chesnokov 474
bld = gtk.Builder()
bld:add_from_file('lab-02.glade')
--Chesnokov 474
ui = bld.objects
--Chesnokov 474
ui.wnd.title = 'lab-02'
ui.wnd.on_destroy = gtk.main.quit
ui.wnd:show_all()
--Chesnokov 474
function ui.btnSum:on_clicked(...)
    a = tonumber(ui.entA.text)
    b = tonumber(ui.entB.text)
    ui.lblRes.label = a + b
end
--Chesnokov 474
function ui.btnSub:on_clicked(...)
    a = tonumber(ui.entA.text)
    b = tonumber(ui.entB.text)
    ui.lblRes.label = a - b
end
--Chesnokov 474
function ui.btnMul:on_clicked(...)
    a = tonumber(ui.entA.text)
    b = tonumber(ui.entB.text)
    ui.lblRes.label = a * b
end
--Chesnokov 474
function ui.btnDiv:on_clicked(...)
    a = tonumber(ui.entA.text)
    b = tonumber(ui.entB.text)
    ui.lblRes.label = a / b
end
--Chesnokov 474
gtk.main()
