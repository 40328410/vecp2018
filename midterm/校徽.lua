-- 導入 "js" 模組


    
local js = require "js"
-- global 就是 javascript 的 window
local global = js.global
local document = global.document
-- html 檔案中 canvas　id 設為 "canvas"
local canvas = document:getElementById("canvas")
-- 將 ctx 設為 canvas 2d 繪圖畫布變數
local ctx = canvas:getContext("2d")

-- 屬性呼叫使用 . 而方法呼叫使用 :
-- 設定填圖顏色

-- 設定畫筆顏色

-- 乘上 deg 可轉為徑度單位
deg = math.pi / 180

-- 建立多邊形定點位置畫線函式
function star(radius, xc, yc, n, angle)
     angle = angle or 0
    --radius = 100
    
    --xc = 200
    --yc = 200
    xi = xc + radius*math.cos((360/n)*deg+angle*deg)
    yi = yc - radius*math.sin((360/n)*deg+angle*deg)
    ctx:beginPath()
    ctx:moveTo(xi,yi)
    for i = 2, n+1 do
        x = xc + radius*math.cos((360/n)*deg*i+angle*deg)
        y = yc - radius*math.sin((360/n)*deg*i+angle*deg)
        ctx:lineTo(x,y)
    end
end

-- 以下利用多邊形畫線函式呼叫執行畫框線或填入顏色
-- 畫五邊形框線
ctx.fillStyle = "rgb(0,0,205)"
ctx.strokeStyle = "rgb(0,0,205)"
star(150, 200, 200, 6, 60)
ctx:closePath()
ctx:fill()

ctx.fillStyle = "rgb(255,255,255)"
ctx.strokeStyle = "rgb(255,255,255)"
star(90, 200, 200, 6, 60)
ctx:closePath()
ctx:fill()


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
flag_w = 600
flag_h = 400
circle_x = flag_w/4
circle_y = flag_h/4

-- 先畫滿地紅
ctx.fillStyle='rgb(255, 255, 255)'
ctx:fillRect(15, 40, 350, 100)

ctx:beginPath()
    ctx:arc(200, 200, 40, 0, math.pi*2, True)
ctx:closePath()
-- 填色設為白色
ctx.fillStyle ='rgb(0, 0, 205)'
ctx:fill()
local js = require "js"
-- global 就是 javascript 的 window
local global = js.global
local document = global.document
-- html 檔案中 canvas　id 設為 "canvas"
local canvas = document:getElementById("canvas")
-- 將 ctx 設為 canvas 2d 繪圖畫布變數
local ctx = canvas:getContext("2d")

-- 屬性呼叫使用 . 而方法呼叫使用 :
-- 設定填圖顏色

-- 設定畫筆顏色

-- 乘上 deg 可轉為徑度單位
deg = math.pi / 180

-- 建立多邊形定點位置畫線函式
function star(radius, xc, yc, n, angle)
     angle = angle or 0
    --radius = 100
    
    --xc = 200
    --yc = 200
    xi = xc + radius*math.cos((360/n)*deg+angle*deg)
    yi = yc - radius*math.sin((360/n)*deg+angle*deg)
    ctx:beginPath()
    ctx:moveTo(xi,yi)
    for i = 2, n+1 do
        x = xc + radius*math.cos((360/n)*deg*i+angle*deg)
        y = yc - radius*math.sin((360/n)*deg*i+angle*deg)
        ctx:lineTo(x,y)
    end
end
ctx.fillStyle = "rgb(255,255,255)"
ctx.strokeStyle = "rgb(255,255,255)"
star(20, 200, 200, 4, 0)
ctx:closePath()
ctx:fill()
star(20, 219, 219, 4, 0)
ctx:closePath()
ctx:fill()
star(20, 181, 181, 4, 0)
ctx:closePath()
ctx:fill()