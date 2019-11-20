----------------------------------------------- 2018-09-28 10:47:37.143940
UDP message sent (602 bytes):

INVITE sip:service@10.204.66.84:5080 SIP/2.0
Via: SIP/2.0/UDP 10.204.66.30:5060;branch=z9hG4bK-30040-1-0
From: sipp <sip:sipp@10.204.66.30:5060>;tag=30040SIPpTag001
To: service <sip:service@10.204.66.84:5080>
Call-ID: 1-30040@10.204.66.30
CSeq: 1 INVITE
Contact: sip:sipp@10.204.66.30:5060
Max-Forwards: 70
Require: timer
Session-Expires: 90;refresher=uac
Supported: timer
Subject: Performance Test
Content-Type: application/sdp
Content-Length:   135

v=0
o=user1 53655765 2353687637 IN IP4 10.204.66.30
s=-
c=IN IP4 10.204.66.30
t=0 0
m=audio 6000 RTP/AVP 0
a=rtpmap:0 PCMU/8000

----------------------------------------------- 2018-09-28 10:47:37.144891
UDP message received [291] bytes :

SIP/2.0 100 Trying
Via: SIP/2.0/UDP 10.204.66.30:5060;branch=z9hG4bK-30040-1-0
From: sipp <sip:sipp@10.204.66.30:5060>;tag=30040SIPpTag001
To: service <sip:service@10.204.66.84:5080>
Call-ID: 1-30040@10.204.66.30
CSeq: 1 INVITE
User-Agent: sofia-sip/1.12.10devel
Content-Length: 0


----------------------------------------------- 2018-09-28 10:47:37.163012
UDP message received [930] bytes :

SIP/2.0 200 OK
Via: SIP/2.0/UDP 10.204.66.30:5060;branch=z9hG4bK-30040-1-0
From: sipp <sip:sipp@10.204.66.30:5060>;tag=30040SIPpTag001
To: service <sip:service@10.204.66.84:5080>;tag=BatK5p0p7r7yD
Call-ID: 1-30040@10.204.66.30
CSeq: 1 INVITE
Contact: <sip:10.204.66.84:5080>
User-Agent: sofia-sip/1.12.10devel
Accept: application/sdp, text/*, application/msml+xml, application/moml+xml
Allow: INVITE, ACK, BYE, CANCEL, OPTIONS, PRACK, MESSAGE, SUBSCRIBE, NOTIFY, REFER, UPDATE, REGISTER, INFO
Require: timer
Supported: timer, 100rel
Session-Expires: 90;refresher=uac
Content-Type: application/sdp
Content-Disposition: session
Content-Length: 153
X-DolbyVoice-MediaServer-Version: Dolby Voice Conference Server - Conference Server 2.11.0.4772952 - Production

v=0
o=- 1538095823 1538095823 IN IP4 10.204.66.84
s=media server session
c=IN IP4 10.204.66.84
t=0 0
m=audio 40048 RTP/AVP 0
a=rtpmap:0 PCMU/8000

----------------------------------------------- 2018-09-28 10:47:37.163156
UDP message sent (375 bytes):

ACK sip:service@10.204.66.84:5080 SIP/2.0
Via: SIP/2.0/UDP 10.204.66.30:5060;branch=z9hG4bK-30040-1-5
From: sipp <sip:sipp@10.204.66.30:5060>;tag=30040SIPpTag001
To: service <sip:service@10.204.66.84:5080>;tag=BatK5p0p7r7yD
Call-ID: 1-30040@10.204.66.30
CSeq: 1 ACK
Contact: sip:sipp@10.204.66.30:5060
Max-Forwards: 70
Subject: Performance Test
Content-Length: 0


----------------------------------------------- 2018-09-28 10:47:40.593016
UDP message received [761] bytes :

SIP/2.0 200 OK
Via: SIP/2.0/UDP 10.204.66.30:5060;branch=z9hG4bK-30026-1-7
From: sipp <sip:sipp@10.204.66.30:5060>;tag=30026SIPpTag001
To: service <sip:service@10.204.66.84:5080>;tag=75mgyaX8jNemF
Call-ID: 1-30026@10.204.66.30
CSeq: 1 INVITE
Contact: <sip:10.204.66.84:5080>
User-Agent: sofia-sip/1.12.10devel
Accept: application/sdp
Allow: INVITE, ACK, BYE, CANCEL, OPTIONS, PRACK, MESSAGE, SUBSCRIBE, NOTIFY, REFER, UPDATE, REGISTER, INFO
Require: timer
Supported: timer, 100rel
Session-Expires: 90;refresher=uac
Content-Type: application/sdp
Content-Disposition: session
Content-Length: 149

v=0
o=- 1538095810 1538095811 IN IP4 10.204.66.84
s=media server session
c=IN IP4 10.204.66.84
t=0 0
m=audio 0 RTP/AVP 0
a=rtpmap:0 PCMU/8000

----------------------------------------------- 2018-09-28 10:47:42.168113
UDP message sent (623 bytes):

INVITE sip:service@10.204.66.84:5080 SIP/2.0
Via: SIP/2.0/UDP 10.204.66.30:5060;branch=z9hG4bK-30040-1-7
From: sipp <sip:sipp@10.204.66.30:5060>;tag=30040SIPpTag001
To: service <sip:service@10.204.66.84:5080>;tag=BatK5p0p7r7yD
Call-ID: 1-30040@10.204.66.30
CSeq: 1 INVITE
Contact: sip:sipp@10.204.66.30:5060
Max-Forwards: 70
Subject: Performance Test
Content-Type: application/sdp
Content-Length:   138
Require: timer
Session-Expires: 90;refresher=uac
Supported: timer

v=0
o=user1 53655765 2353687637 IN IP4 10.204.66.30
s=-
c=IN IP4 10.204.66.30
t=0 0
m=audio 6000 RTP/AVP 97
a=rtpmap:97 speex/8000

----------------------------------------------- 2018-09-28 10:47:42.168973
UDP message received [761] bytes :

SIP/2.0 200 OK
Via: SIP/2.0/UDP 10.204.66.30:5060;branch=z9hG4bK-30040-1-7
From: sipp <sip:sipp@10.204.66.30:5060>;tag=30040SIPpTag001
To: service <sip:service@10.204.66.84:5080>;tag=BatK5p0p7r7yD
Call-ID: 1-30040@10.204.66.30
CSeq: 1 INVITE
Contact: <sip:10.204.66.84:5080>
User-Agent: sofia-sip/1.12.10devel
Accept: application/sdp
Allow: INVITE, ACK, BYE, CANCEL, OPTIONS, PRACK, MESSAGE, SUBSCRIBE, NOTIFY, REFER, UPDATE, REGISTER, INFO
Require: timer
Supported: timer, 100rel
Session-Expires: 90;refresher=uac
Content-Type: application/sdp
Content-Disposition: session
Content-Length: 149

v=0
o=- 1538095823 1538095824 IN IP4 10.204.66.84
s=media server session
c=IN IP4 10.204.66.84
t=0 0
m=audio 0 RTP/AVP 0
a=rtpmap:0 PCMU/8000

----------------------------------------------- 2018-09-28 10:47:42.171293
UDP message sent (376 bytes):

BYE sip:service@10.204.66.84:5080 SIP/2.0
Via: SIP/2.0/UDP 10.204.66.30:5060;branch=z9hG4bK-30040-1-10
From: sipp <sip:sipp@10.204.66.30:5060>;tag=30040SIPpTag001
To: service <sip:service@10.204.66.84:5080>;tag=BatK5p0p7r7yD
Call-ID: 1-30040@10.204.66.30
CSeq: 2 BYE
Contact: sip:sipp@10.204.66.30:5060
Max-Forwards: 70
Subject: Performance Test
Content-Length: 0


----------------------------------------------- 2018-09-28 10:47:42.171987
UDP message received [437] bytes :

SIP/2.0 200 OK
Via: SIP/2.0/UDP 10.204.66.30:5060;branch=z9hG4bK-30040-1-10
From: sipp <sip:sipp@10.204.66.30:5060>;tag=30040SIPpTag001
To: service <sip:service@10.204.66.84:5080>;tag=BatK5p0p7r7yD
Call-ID: 1-30040@10.204.66.30
CSeq: 2 BYE
User-Agent: sofia-sip/1.12.10devel
Allow: INVITE, ACK, BYE, CANCEL, OPTIONS, PRACK, MESSAGE, SUBSCRIBE, NOTIFY, REFER, UPDATE, REGISTER, INFO
Supported: timer, 100rel
Content-Length: 0


