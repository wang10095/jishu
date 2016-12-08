

####### 预先添加  
include $(CLEAR_VARS)
LOCAL_MODULE := jpush220
LOCAL_SRC_FILES := prebuilt/$(TARGET_ARCH_ABI)/libjpush220.so
include $(PREBUILT_SHARED_LIBRARY)
LOCAL_SHARED_LIBRARIES := jpush220


include $(CLEAR_VARS)
LOCAL_MODULE := jpush220
LOCAL_SRC_FILES := pre
####### third so end

--测试
//开发地址    
http://download.zuanyanguoji.com/static/hongboecai/develop_ios/repository_1.0.0.json
http://download.zuanyanguoji.com/static/hongboecai/develop_ios/version.html
http://download.zuanyanguoji.com/static/hongboecai/develop_android/repository_2.2.5.json
http://download.zuanyanguoji.com/static/hongboecai/develop_android/version.html

--外网
//提审地址    
http://download.zuanyanguoji.com/static/hongboecai/test_ios/repository_1.0.0.json
http://download.zuanyanguoji.com/static/hongboecai/test_ios/version.html
http://download.zuanyanguoji.com/static/hongboecai/test_android/repository_2.2.5.json
http://download.zuanyanguoji.com/static/hongboecai/test_android/version.html

//线上地址     
http://download.zuanyanguoji.com/static/hongboecai/ios/repository_1.0.0.json
http://download.zuanyanguoji.com/static/hongboecai/ios/version.html
http://download.zuanyanguoji.com/static/hongboecai/android/repository_2.2.5.json
http://download.zuanyanguoji.com/static/hongboecai/android/version.html


21945750

ed2k
com.HongBoGuFen.HongBoYiCai

-- std::string str = StringUtils::format("%s.png","picture")
FESCO-WIFI   fesco*wifi77 --wifi密码
http://192.168.1.121:8090/svn/client/trunk  --svn游戏下载路径
cyjtjszx@hongbo.net.cn    HongBo20142015  --鸿博appid
wodegamemail@126.com      1234_com         --VPN 账号
zuanyan_beijing@sohu.com  Zuanyan2601  --Xcode 装机测试账号
xuzhiqiang123@test.com    Zuanyan123456 --测试appId 账号
http://192.168.1.121:8090/doc/caipiaodating_youxi/Prototype/#p=赛跑
http://192.168.1.121:8090/doc/wo_shi_jian_shou-buchong/Prototype/#p=11月19日_修改累积奖励    --箭手需求
http://192.168.1.121:8090/bugfree3.0.4/index.php/site/login    --Bugfree
192.168.1.121     123456
svn账号密码      junwei.wang abc.123
scp  -r  ./Sites     root@192.168.1.121:/usr/local/apache/htdocs/192.168.1.121:8090/Sites --发布的scp

--########################################################clippingNode 
function clippingNodeUse(node,highSprite)
    print("=======clippingNodeUse=========")

    local clipnode = cc.ClippingNode:create()
    clipnode:setPosition(cc.p(0,0))
    node:addChild(clipnode)
    clipnode:setInverted(true)
    -- clipnode:setAlphaThreshold(0)

    _clipnode = clipnode

    local bg = cc.LayerColor:create(cc.c4b(0,0,0,100))
    bg:setPosition(cc.p(0,0))
    bg:setContentSize(cc.size(display.width,display.height))
    clipnode:addChild(bg,1)


    local cloneSpite = highSprite:clone()


    _pos = cc.p(cloneSpite:getPosition())
    _highSprite = cloneSpite

    local  position = highSprite:getParent():convertToWorldSpace(cc.p(highSprite:getPosition()))
    cloneSpite:setPosition(position)
    cloneSpite:removeFromParent(false)
    clipnode:setStencil(cloneSpite) 
end
--################################################################################################
    self.scrol = cc.ui.UIScrollView.new{
        direction = cc.ui.UIScrollView.DIRECTION_VERTICAL,
        viewRect = cc.rect(0,0,display.width,display.height-200),
        bg = nil,
        touchOnContent = true,
        scrollbarImgH = nil,
        scrollbarImgV = nil,
        bgColor = nil,
        bgStartColor = nil,
        bgEndColor = nil,
        bgScale9 = false,
    }
    local node = display.newNode()
    local sprite = display.newSprite("res/lobby/paihangbang.jpg") 
    node:addChild(sprite)
    node:setPositionX(display.cx)
    self.scrol:addScrollNode(node)

    self.ui_help:addChild(self.scrol,100)    
    self.scrol:setBounceable(false)
    self.scrol:setInertiaScrollEnabled(true)
    self.scrol:setTouchEnabled(true)
--################################################################################################
