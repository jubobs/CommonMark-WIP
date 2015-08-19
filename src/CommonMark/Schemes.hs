-- | URI schemes.

module CommonMark.Schemes
    ( isValidScheme
    ) where

import Data.Char ( toLower )
import Data.Set ( Set )
import qualified Data.Set as S
import Data.Text ( Text )
import qualified Data.Text as T

-- | Self-explanatory.
isValidScheme :: Text -> Bool
isValidScheme t = T.map toLower t `S.member` schemes

-- | Valid schemes for autolinks.
schemes :: Set Text
schemes = S.fromList
    [ "coap", "doi", "javascript"
    , "aaa", "aaas", "about", "acap"
    , "cap", "cid", "crid", "data", "dav", "dict", "dns", "file", "ftp"
    , "geo", "go", "gopher", "h323", "http", "https", "iax", "icap", "im"
    , "imap", "info", "ipp", "iris", "iris.beep", "iris.xpc", "iris.xpcs"
    , "iris.lwz", "ldap", "mailto", "mid", "msrp", "msrps", "mtqp"
    , "mupdate", "news", "nfs", "ni", "nih", "nntp", "opaquelocktoken", "pop"
    , "pres", "rtsp", "service", "session", "shttp", "sieve", "sip", "sips"
    , "sms", "snmp", "soap.beep", "soap.beeps", "tag", "tel", "telnet", "tftp"
    , "thismessage", "tn3270", "tip", "tv", "urn", "vemmi", "ws", "wss"
    , "xcon", "xcon-userid", "xmlrpc.beep", "xmlrpc.beeps", "xmpp", "z39.50r"
    , "z39.50s"
    , "adiumxtra", "afp", "afs", "aim", "apt", "attachment", "aw"
    , "beshare", "bitcoin", "bolo", "callto", "chrome", "chrome-extension"
    , "com-eventbrite-attendee", "content", "cvs", "dlna-playsingle"
    , "dlna-playcontainer", "dtn", "dvb", "ed2k", "facetime", "feed"
    , "finger", "fish", "gg", "git", "gizmoproject", "gtalk"
    , "hcp", "icon", "ipn", "irc", "irc6", "ircs", "itms", "jar"
    , "jms", "keyparc", "lastfm", "ldaps", "magnet", "maps", "market"
    , "message", "mms", "ms-help", "msnim", "mumble", "mvn", "notes"
    , "oid", "palm", "paparazzi", "platform", "proxy", "psyc", "query"
    , "res", "resource", "rmi", "rsync", "rtmp", "secondlife", "sftp"
    , "sgn", "skype", "smb", "soldat", "spotify", "ssh", "steam", "svn"
    , "teamspeak", "things", "udp", "unreal", "ut2004", "ventrilo"
    , "view-source", "webcal", "wtai", "wyciwyg", "xfire", "xri"
    , "ymsgr"
    ]
