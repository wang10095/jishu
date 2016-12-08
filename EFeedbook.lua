require("app.core.ext.string")

local EFeedbook = class("EFeedbook", function()
    return display.newScene("EFeedbook")  
end)

--个人信息 hongboeCai
function EFeedbook:ctor(args)
    self.viewNode  = CCBReaderLoad("lobby/Ecai/EFeedbook.ccbi",self)
    self:addChild(self.viewNode)
    self.args = args
    self:setNodeEventEnabled(true)
    self:addNewEventListener()

    self:addUI()
end

function EFeedbook:addUI()
    self.lab_feed:setPositionX(self.lab_feed:getPositionX()+10)
    local fBox = self.input_content:getBoundingBox()
    self.editFeedbook = cc.ui.UIInput.new({
        UIInputType = 2,
        size = cc.size(fBox.width,fBox.height),
        fontSize = 30,
        y = 0+fBox.height,
        x = 10,
        maxLength = 200,
        listener = function(editbox, event)
            if event == 0 then
            elseif event == 1 then
            else
                local ss = editbox:getString()
                self.lab_feed:setString(ss)
                release_print("changed = %s",ss)
            end
        end
    })
    self.editFeedbook:setAnchorPoint(cc.p(0,1))
    self.editFeedbook:setTextColor(cc.c4b(0,0,0,0))
    self.editFeedbook:setPlaceHolder("请输入反馈内容（200字以内）")
    self.input_content:addChild(self.editFeedbook)


    local fBox2 = self.input_iphone:getBoundingBox()
    self.editIphone = cc.ui.UIInput.new({
        image = "res/eshare_shurukuang_bai.png",
        size = cc.size(fBox2.width-60,50),
        x = -20+fBox2.width/2,
        y = 0+fBox2.height/2,
        listener = function(event, editbox)
            if event == "began" then
            elseif event == "ended" then
            elseif event == "return" then
                printf("editBox1 event return : %s", editbox:getText())
                local editStr = tostring(editbox:getText())
                if string.len(editStr) ~= 11 then
                    print("=电话号码格式错误==")
                end
            elseif event == "changed" then --屏蔽非正整数
                local boxstr = tostring(editbox:getText())
                boxstr = string.gsub(boxstr,"%D","")
                if string.len(boxstr) > 11 then 
                    string.sub(boxstr,1,-2)
                end
                printf("editBox1 event changed : %s", editbox:getText())
            else
                printf("EditBox event %s", tostring(event))
            end
        end
    })
    self.editIphone:setReturnType(cc.KEYBOARD_RETURNTYPE_SEND)
    self.editIphone:setInputMode(cc.EDITBOX_INPUT_MODE_NUMERIC)
    self.editIphone:setFontColor(cc.c4b(0,0,0,255))
    self.editIphone:setPlaceHolder("请填写您的手机号（选填）")
    self.input_iphone:addChild(self.editIphone)
    self.editIphone:setPlaceholderFontSize(30.0)
end

function EFeedbook:addNewEventListener()
    core.displayEX.newButton(self.btn_back)
    :onButtonClicked(function(event)
        scn.ScnMgr.replaceScene("scenes.lobby.LobbyScene",{2},3)
    end)

    core.displayEX.newButton(self.btn_myfankui)
    :onButtonClicked(function(event)

        local login = app:getObject("UserModel"):getUserLogin()
        if login == 1 then
            print("我的反馈")
            self:selectFeedbook()
        else
            print("游客登录")
            scn.ScnMgr.replaceScene("scenes.lobby.LoginAnySdkScene",nil,4)
        end
    end)

    core.displayEX.newButton(self.btn_submit)
    :onButtonClicked(function(event)
        local login = app:getObject("UserModel"):getUserLogin()
        if login == 1 then
            print("提交反馈")
            if self.lab_feed:getString() == "" then
                ErrorTipViewShow(self,"意见反馈不能为空")
            else
                self:submitFeedbook()
            end
        else
            print("游客登录")
            scn.ScnMgr.replaceScene("scenes.lobby.LoginAnySdkScene",nil,4)
        end

    end)
end

function EFeedbook:submitFeedbook()
    self.btn_submit:setButtonEnabled(false)
    self.btn_myfankui:setButtonEnabled(false)

    local content = tostring(self.editFeedbook:getString())
    local iphone = tostring(self.editIphone:getText())
    NetDataManager:sharedNetDataManager():postListenerLua(function( event )
            self.btn_submit:setButtonEnabled(true)
            self.btn_myfankui:setButtonEnabled(true)

            -- body
            local responseCode = event["responseCode"]
            local responseMsg = event["responseMsg"]
            print("responseCode:", responseCode)
            print("responseMsg:", responseMsg)
            if tonumber(responseCode) == 000000 then
                self.lab_feed:setString("")
                self.editFeedbook:setString("")
                print("==提交成功===")
                ErrorTipViewShow(self,"您的意见已经提交成功!")
            elseif tonumber(responseCode) == 100105 then
                scn.ScnMgr.replaceScene("scenes.lobby.loginRegister.UserLoginScene",{{isValidationFails=true}},4)

            else
                ErrorTipViewShow(self,responseMsg)
                print("==提交error===")
            end
        end)

    local userdata = {
        {type = "1020"},
        {accountId = app:getAccountPropertyByKey("accountId")}, 
        {sessionId = app:getAccountPropertyByKey("sessionId")}, 
        {memo = AppLuaApi:stringToUtf8(content) }, 
        {adviceType = "1"}, 
    }
    local xmldata = app:buildBodyXmlAPIStr(userdata)
    NetDataManager:sharedNetDataManager():post(tostring(xmldata))
end


function EFeedbook:selectFeedbook()
    NetDataManager:sharedNetDataManager():postListenerLua(function( event )
        -- body
        local responseCode = event["responseCode"]
        local responseMsg = event["responseMsg"]
        print("responseCode:", responseCode)
        print("responseMsg:", responseMsg)
        if tonumber(responseCode) == 000000 then
            local msg = string.split(event["replyTime"], ",")
            local msgTable = {}
            for i=0,#msg/6-1 do
                table.insert(msgTable, {
                    id = msg[i*6+1],
                    curType = msg[i*6+2],
                    memo = msg[i*6+3]=="null" and "" or msg[i*6+3],
                    createTime = msg[i*6+4]=="null" and "" or msg[i*6+4],
                    reply = msg[i*6+5]=="null" and "" or msg[i*6+5],
                    replyTime = msg[i*6+6]=="null" and "" or msg[i*6+6],
                })
            end
            scn.ScnMgr.replaceScene("scenes.Ecai.EMyFeedbook",{{scene = "Ecai.EFeedbook",msg = msgTable}},4)
        elseif tonumber(responseCode) == 100105 then
            scn.ScnMgr.replaceScene("scenes.lobby.loginRegister.UserLoginScene",{{isValidationFails=true}},4)
      
        else
            ErrorTipViewShow(self,responseMsg)
            print("=selectFeedbook error=")
        end
    end)

    local userdata = {
        {type = "1032"},
        {accountId = app:getAccountPropertyByKey("accountId")}, 
        {sessionId = app:getAccountPropertyByKey("sessionId")}, 
    }
    local xmldata = app:buildBodyXmlAPIStr(userdata)
    NetDataManager:sharedNetDataManager():post(tostring(xmldata))
end

function EFeedbook:onEnter()
  
end

function EFeedbook:onExit()
    self:removeAllNodeEventListeners()
end

return EFeedbook
