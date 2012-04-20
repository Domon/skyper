module Skyper
  class User < SkypeObject
    property_reader :IS_VIDEO_CAPABLE => :bool, :IS_VOICEMAIL_CAPABLE => :bool, :IS_CF_ACTIVE => :bool, :HASCALLEQUIPMENT => :bool, :LASTONLINETIMESTAMP => Time
    property_reader *%w[HANDLE FULLNAME BIRTHDAY SEX LANGUAGE COUNTRY PROVINCE CITY PHONE_HOME PHONE_OFFICE PHONE_MOBILE HOMEPAGE ABOUT
       ONLINESTATUS SkypeOut SKYPEME CAN_LEAVE_VM RECEIVEDAUTHREQUEST MOOD_TEXT
       RICH_MOOD_TEXT ALIASES TIMEZONE NROF_AUTHED_BUDDIES]
    property_accessor *%w[BUDDYSTATUS ISBLOCKED ISAUTHORIZED SPEEDDIAL DISPLAYNAME]
    self.object_name = "USER"

    def chat
      Chat.create id
    end

  end
end