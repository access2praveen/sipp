from comms_codec.g711 import G711
from comms_codec.rtp_file import RtpFile
from comms_codec.l16 import L16
from comms_codec.amrwb import Amrwb
from comms_codec.g722 import G722
from comms_codec.opus import Opus 
from comms_codec.g7221 import G7221
import dpkt.rtp as rtp
import sys,argparse


def L16_rtpdump2wav(input):
   codec=L16(channel=1, fs=32000)
   RtpFile.rtp_to_pcm(input, "l16.wav", codec)

def G7221_rtpdump2wav(input,BPS):
  if(BPS=='24KBPS'):
    codec=G7221(fs=16000,mode="24KBPS")
    RtpFile.rtp_to_pcm(input, "G7221_24KBPS.wav", codec)
  elif(BPS=='32KBPS'):
   codec=G7221(fs=16000,mode="32KBPS")
   RtpFile.rtp_to_pcm(input, "G7221_32KBPS.wav", codec)
  else:
   print ("G7221 doesnt support 48KBPS,Hence creates only G7221 rtpdump")

def amrwb_rtpdump2wav(input,DTX,BS):
  if (BS=='BANDWIDTH_EFF'):
    if (DTX==False):
      codec=Amrwb()
      RtpFile.rtp_to_pcm(input, "AMRWB_BWE.wav", codec)
    else:
      codec=Amrwb(is_dtx=True)
      RtpFile.rtp_to_pcm(input, "AMRWB_BWE_DTX.wav", codec)
  else:
     if (DTX==False):
      codec=Amrwb(format='OCTET_ALIGNED')
      RtpFile.rtp_to_pcm(input, "AMRWB_OCT.wav", codec)
     else:
      codec=Amrwb(format='OCTET_ALIGNED',is_dtx=True)
      RtpFile.rtp_to_pcm(input, "AMRWB_OCT_DTX.wav", codec)

def G7221C_rtpdump2wav(input,BPS):
  if(BPS=='24KBPS'):
    codec=G7221(fs=32000,mode="24KBPS")
    RtpFile.rtp_to_pcm(input,"G7221C_24KBPS.wav", codec)
  elif(BPS=='32KBPS'):
   codec=G7221(fs=32000,mode="32KBPS")
   RtpFile.rtp_to_pcm(input,"G7221C_32KBPS.wav", codec)
  elif(BPS=='48KBPS'):
   codec=G7221(fs=32000,mode="48KBPS")
   RtpFile.rtp_to_pcm(input,"G7221C_48KBPS.wav", codec)
  else:
   print("invalid bitrate exiting")

def G722_rtpdump2wav(input):
    codec=G722()
    RtpFile.rtp_to_pcm(input, "G722.wav", codec)

def OpusMono_rtpdump2wav(input):
     codec=Opus(channel=1)   
     RtpFile.rtp_to_pcm(input, "OpusMono.wav", codec)

def OpusStereo_rtpdump2wav(input):
     stereo_codec=Opus(channel=2)
     RtpFile.rtp_to_pcm(input, "OpusStereo.wav", stereo_codec)

def pcma_rtpdump2wav(input):
     codec=G711()
     RtpFile.rtp_to_pcm(input, "pcma.wav", codec)
def pcmu_rtpdump2wav(input):
     codec =G711(law="U_LAW")
     RtpFile.rtp_to_pcm(input, "pcmu.wav", codec)
     
#import sys
#import argparse
if __name__ == "__main__":
   parser = argparse.ArgumentParser(description='Short sample app')
   parser.add_argument('-codec', dest="codec", help='AMR-WB,L16,G7221,G.7221C,opus,pcmu,pcma,G722',default=None)
   parser.add_argument('-rtpdump',dest="rtpdump", default=None)
   parser.add_argument('-amrwb_format',dest='amrwb_format',help='BANDWIDTH_EFF or OCTET_ALIGNED',default='BANDWIDTH_EFF')
   parser.add_argument('-amrwbdtx',dest='amrwbdtxflag',help='True/False',default=False)
   parser.add_argument('-G7221KBPS',dest='G7221KBPS',help='24KBPS or 32KBPS',default='24KBPS')
   parser.add_argument('-G7221CKBPS',dest='G7221CKBPS',help='24KBPS,32KBPS or 48KBPS',default='48KBPS')
   args= parser.parse_args()
   
   if "opus" in args.codec:
     OpusMono_rtpdump2wav(args.rtpdump)
     OpusStereo_rtpdump2wav(args.rtpdump)
   elif "L16" in args.codec:
     L16_rtpdump2wav(args.rtpdump)
   elif "AMR-WB" in args.codec:
    amrwb_rtpdump2wav(args.rtpdump,args.amrwbdtxflag,args.amrwb_format)
   elif "G7221" in args.codec:
    G7221_rtpdump2wav(args.rtpdump,args.G7221KBPS)
   elif "G.7221C" in args.codec:
    G7221C_rtpdump2wav(args.rtpdump,args.G7221CKBPS)
   elif "G722" in args.codec:
    G722_rtpdump2wav(args.rtpdump)
   elif "PCMA" in args.codec: 
    pcma_rtpdump2wav(args.rtpdump)
   elif "PCMU" in args.codec:
    pcmu_rtpdump2wav(args.rtpdump)







