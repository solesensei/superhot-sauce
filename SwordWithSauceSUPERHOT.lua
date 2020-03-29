form_show(UDF1)

function FormClose(sender)
    closeCE();
    return caFree
end

function LaunchMod(sender)
    if openProcess'SwordWithSauce-Win64-Shipping.exe' then
        control_setCaption(UDF1.HeaderText, 'SUPER HOT MOD ACTIVATED')
    else
         control_setCaption(UDF1.HeaderText, 'Game process is not found :c')
    end
end

function SetSlowTimeFactor(sender)
    UDF1.SlowTimeValueLabel.Caption = tostring(sender.Position) .. '%'
    speed_hack_value = sender.Position / 100
end


t = createTimer(nil)
timer_setInterval(t, 100)
UDF1.SlowTimeBar.Position = 20
speed_hack_value = UDF1.SlowTimeBar.Position / 100

function checkKeys(timer)
  if (isKeyPressed(VK_W)) or (isKeyPressed(VK_A))
     or (isKeyPressed(VK_S)) or (isKeyPressed(VK_D))
     or (isKeyPressed(VK_SPACE)) or (isKeyPressed(VK_LBUTTON))
     or (isKeyPressed(VK_Q))
     or (isKeyPressed(VK_E)) or (isKeyPressed(VK_R))then
     speedhack_setSpeed(1)
  else
    speedhack_setSpeed(speed_hack_value)
  end
end


timer_onTimer(t, checkKeys)
timer_setEnabled(t, true)
