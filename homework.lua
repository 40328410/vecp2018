-- 導入 "js" 模組
local js = require "js"
-- global 就是 javascript 的 window
local global = js.global
local document = global.document
-- html 檔案中 canvas　id 設為 "canvas"
-- 準備繪圖畫布
local canvas = document:getElementById("canvas")
-- 將 ctx 設為 canvas 2d 繪圖畫布變數
local ctx = canvas:getContext("2d")

-- 以下採用 canvas 原始座標繪圖
flag_w = 700
flag_h = 350
circle_x = flag_w/4
circle_y = flag_h/4

-- 先畫滿地紅
ctx.fillStyle='rgb(255, 0, 0)'
ctx:fillRect(0, 0, 700, 350)

ctx.fillStyle='rgb(0, 0, 150)'
ctx:fillRect(0, 0, flag_w/5*2, flag_h/13*7) 

-- 白線 
ctx.fillStyle='rgb(255, 255, 255)'
ctx:fillRect(flag_w/5*2, flag_h/13*1,  flag_w/2, flag_h/13) 

ctx.fillStyle='rgb(255, 255, 255)'
ctx:fillRect(flag_w/5*2, flag_h/13*3,  flag_w/2, flag_h/13) 

ctx.fillStyle='rgb(255, 255, 255)'
ctx:fillRect(flag_w/5*2, flag_h/13*5,  flag_w/2, flag_h/13) 

ctx.fillStyle='rgb(255, 255, 255)'
ctx:fillRect( 0, flag_h/13*7,  flag_w, flag_h/13)

ctx.fillStyle='rgb(255, 255, 255)'
ctx:fillRect( 0, flag_h/13*9,  flag_w, flag_h/13)

ctx.fillStyle='rgb(255, 255, 255)'
ctx:fillRect( 0, flag_h/13*11,  flag_w, flag_h/13)



-- 星星
-- 導入 "js" 模組
local js = require "js"
-- global 就是 javascript 的 window
local global = js.global
local document = global.document
-- html 檔案中 canvas　id 設為 "canvas"
-- 準備繪圖畫布
local canvas = document:getElementById("canvas")
-- 將 ctx 設為 canvas 2d 繪圖畫布變數
ctx = canvas:getContext("2d")


-- 準備在 canvas 中繪圖
function draw_line(x1, y1, x2, y2, color)
    color = color or "red"
    ctx:beginPath()
    ctx:moveTo(x1, y1)
    ctx:lineTo(x2, y2)
    ctx.strokeStyle = color
    ctx:stroke()
end

-- x, y 為中心,  r 為半徑, angle 旋轉角,  solid 空心或實心,  color 顏色
function star(x, y, r, angle, solid, color)
    angle = angle or 0
    solid = solid or false
    color = color or "#f00"
    -- 以 x, y 為圓心, 計算五個外點
    local deg = math.pi/180
    -- 圓心到水平線距離
    local a = r*math.cos(72*deg)
    -- a 頂點向右到內點距離
    local b = (r*math.cos(72*deg)/math.cos(36*deg))*math.sin(36*deg)
    -- 利用畢氏定理求內點半徑
    rin = math.sqrt(a*a + b*b)
    -- 查驗 a, b 與 rin
    --print(a, b, rin)
    if (solid) then
        ctx:beginPath()
    end
    for i = 0, 4 do
        xout = (x + r*math.sin((360/5)*deg*i+angle*deg))
        yout = (y + r*math.cos((360/5)*deg*i+angle*deg))
        -- 外點增量 + 1
        xout2 = x + r*math.sin((360/5)*deg*(i+1)+angle*deg)
        yout2 = y + r*math.cos((360/5)*deg*(i+1)+angle*deg)
        xin = x + rin*math.sin((360/5)*deg*i+36*deg+angle*deg)
        yin = y + rin*math.cos((360/5)*deg*i+36*deg+angle*deg)
        -- 查驗外點與內點座標
        --print(xout, yout, xin, yin)
        if (solid) then
            -- 填色
            if (i==0) then
                ctx:moveTo(xout, yout)
                ctx:lineTo(xin, yin)
                ctx:lineTo(xout2, yout2)
            else
                ctx:lineTo(xin, yin)
                ctx:lineTo(xout2, yout2)
            end
        else
            -- 空心
            draw_line(xout, yout, xin, yin, color)
            -- 畫空心五芒星, 無關畫線次序, 若實心則與畫線次序有關
            draw_line(xout2, yout2, xin, yin, color)
        end
    end
    
    if (solid) then
        ctx.fillStyle = color
        ctx:fill()
    end
end
--第一排星星
star(20, 20, 8, 36, true, "#FFFFFF")

star(20, 55, 8, 36, true, "#FFFFFF")

star(20, 90, 8, 36, true, "#FFFFFF")

star(20, 125, 8, 36, true, "#FFFFFF")

star(20, 160, 8, 36, true, "#FFFFFF")
--第三排
star(66, 20, 8, 36, true, "#FFFFFF")

star(66, 55, 8, 36, true, "#FFFFFF")

star(66, 90, 8, 36, true, "#FFFFFF")

star(66, 125, 8, 36, true, "#FFFFFF")

star(66, 160, 8, 36, true, "#FFFFFF")
--五
star(112, 20, 8, 36, true, "#FFFFFF")

star(112, 55, 8, 36, true, "#FFFFFF")

star(112, 90, 8, 36, true, "#FFFFFF")

star(112, 125, 8, 36, true, "#FFFFFF")

star(112, 160, 8, 36, true, "#FFFFFF")
--七
star(158, 20, 8, 36, true, "#FFFFFF")

star(158, 55, 8, 36, true, "#FFFFFF")

star(158, 90, 8, 36, true, "#FFFFFF")

star(158, 125, 8, 36, true, "#FFFFFF")

star(158, 160, 8, 36, true, "#FFFFFF")
--十一

star(245, 20, 8, 36, true, "#FFFFFF")

star(245, 55, 8, 36, true, "#FFFFFF")

star(245, 90, 8, 36, true, "#FFFFFF")

star(245, 125, 8, 36, true, "#FFFFFF")

star(245, 160, 8, 36, true, "#FFFFFF")
--九
star(200, 20, 8, 36, true, "#FFFFFF")

star(200, 55, 8, 36, true, "#FFFFFF")

star(200, 90, 8, 36, true, "#FFFFFF")

star(200, 125, 8, 36, true, "#FFFFFF")

star(200, 160, 8, 36, true, "#FFFFFF")
--二
star(43, 37.5, 8, 36, true, "#FFFFFF")

star(43, 72.5, 8, 36, true, "#FFFFFF")

star(43, 107.5, 8, 36, true, "#FFFFFF")

star(43, 142.5, 8, 36, true, "#FFFFFF")
--四
star(89, 37.5, 8, 36, true, "#FFFFFF")

star(89, 72.5, 8, 36, true, "#FFFFFF")

star(89, 107.5, 8, 36, true, "#FFFFFF")

star(89, 142.5, 8, 36, true, "#FFFFFF")
--六
star(135, 37.5, 8, 36, true, "#FFFFFF")

star(135, 72.5, 8, 36, true, "#FFFFFF")

star(135, 107.5, 8, 36, true, "#FFFFFF")

star(135, 142.5, 8, 36, true, "#FFFFFF")
--八
star(181, 37.5, 8, 36, true, "#FFFFFF")

star(181, 72.5, 8, 36, true, "#FFFFFF")

star(181, 107.5, 8, 36, true, "#FFFFFF")

star(181, 142.5, 8, 36, true, "#FFFFFF")
--十
star(227, 37.5, 8, 36, true, "#FFFFFF")

star(227, 72.5, 8, 36, true, "#FFFFFF")

star(227, 107.5, 8, 36, true, "#FFFFFF")

star(227, 142.5, 8, 36, true, "#FFFFFF")








