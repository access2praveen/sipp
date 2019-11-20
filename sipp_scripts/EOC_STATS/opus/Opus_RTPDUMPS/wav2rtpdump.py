from comms_codec.g711 import G711
from comms_codec.rtp_file import RtpFile
from comms_codec.l16 import L16
from comms_codec.amrwb import Amrwb
from comms_codec.g722 import G722
from comms_codec.opus import Opus 
from comms_codec.g7221 import G7221
import dpkt.rtp as rtp
import sys,argparse

#opusdtxflag=True
#amrwbdtxflag=True
#AMR_BS='OCTET_ALIGNED'
#G7221_BPS='64KBPS'
#G7221C_BPS='48KBPS'

def pcma_wav2rtpdump(input): 
  codec=G711()
  RtpFile.pcm_to_rtp(input,"PCMA.rtpdump",codec)

def pcmu_wav2rtpdump(input): 
   rtpPkt = rtp.RTP()
   rtpPkt.version=2
   rtpPkt.pt=0
   codec =G711(law="U_LAW")
   RtpFile.pcm_to_rtp(input,"PCMU.rtpdump",codec, rtp_header=rtpPkt)

def amrwb_wav2rtpdump(input,DTX,BS):
  if (BS=='BANDWIDTH_EFF'):
     if (DTX==False): 
      codec=Amrwb()
      RtpFile.pcm_to_rtp(input,"AMRWB_BW.rtpdump",codec)
     else: 
      codec=Amrwb(is_dtx=True)
      RtpFile.pcm_to_rtp(input,"AMRWB_BW_DTX.rtpdump",codec)
  else:
     if (DTX==False):
      codec=Amrwb(format='OCTET_ALIGNED')
      RtpFile.pcm_to_rtp(input,"AMRWB_OCT.rtpdump",codec)
     else:
      codec=Amrwb(format='OCTET_ALIGNED',is_dtx=True)
      RtpFile.pcm_to_rtp(input,"AMRWB_OCT_DTX.rtpdump",codec)


def G722_wav2rtpdump(input):
   codec=G722()
   RtpFile.pcm_to_rtp(input,"G722.rtpdump",codec)


def G7221_wav2rtpdump(input,BPS):
  if(BPS=='24KBPS'):
   codec=G7221(fs=16000,mode="24KBPS")
   RtpFile.pcm_to_rtp(input,"G7221_24KBPS.rtpdump",codec)
  elif(BPS=='32KBPS'):
   codec=G7221(fs=16000,mode="32KBPS")
   RtpFile.pcm_to_rtp(input,"G7221_32KBPS.rtpdump",codec)
  else:
   print ("G7221 doesnt support 48KBPS,Hence creates only G7221 rtpdump")
def G7221C_wav2rtpdump(input,BPS):
  if(BPS=='24KBPS'):
   codec=G7221(fs=32000,mode="24KBPS")
   RtpFile.pcm_to_rtp(input,"G7221C_24KBPS.rtpdump",codec)
  elif(BPS=='32KBPS'): 
   codec=G7221(fs=32000,mode="32KBPS")
   RtpFile.pcm_to_rtp(input,"G7221C_32KBPS.rtpdump",codec)
  elif(BPS=='48KBPS'):
   codec=G7221(fs=32000,mode="48KBPS")
   RtpFile.pcm_to_rtp(input,"G7221C_48.rtpdump",codec)
  else:
   print("invalid bitrate exiting")

def L16_wav2rtpdump(input):
    rtpPkt = rtp.RTP()
    rtpPkt.version=2
    rtpPkt.pt=11
    codec=L16(channel=1, fs=32000)
    RtpFile.pcm_to_rtp(input,"L16.rtpdump",codec)

def OpusMono_wav2rtpdump(input,DTX):
  if (DTX==False):
   codec=Opus(channel=1)
   RtpFile.pcm_to_rtp(input,"OPUSMONO.rtpdump",codec)
  else:
   codec=Opus(channel=1,is_dtx=True)
   RtpFile.pcm_to_rtp(input,"OPUSMONO_DTX.rtpdump",codec)

def OpusStereo_wav2rtpdump(input,DTX):
  if (DTX==False):
   stereo_codec=Opus(channel=2)
   RtpFile.pcm_to_rtp(input,"OPUSSTEREO.rtpdump",stereo_codec)
  else:
   codec=Opus(channel=2,is_dtx=True)
   RtpFile.pcm_to_rtp(input,"OPUS_STEREO_DTX.rtpdump",codec)


if __name__ == "__main__":
   parser = argparse.ArgumentParser(description='Generate TestVectors')
   parser.add_argument('-codec', dest="codec",help='AMR-WB,L16,G.7221,G.7221C,OPUS,PCMU,PCMA,G722,OPUSSTEREO', default=None)
   parser.add_argument('-wav',dest="wav", default='harvard_mono.wav')
   parser.add_argument('-stereo',dest='stereowav',default='harvard_stereo.wav')
   parser.add_argument('-amrwbdtx',dest='amrwbdtxflag',help='True/False',default=False)
   parser.add_argument('-amrwb_format',dest='amrwb_format',help='BANDWIDTH_EFF or OCTET_ALIGNED', default='BANDWIDTH_EFF')
   parser.add_argument('-opusdtx',dest='opusdtxflag',help='True/False',default=False)
   parser.add_argument('-G7221KBPS',dest='G7221KBPS',help='24KBPS or 32KBPS',default='24KBPS')
   parser.add_argument('-G7221CKBPS',dest='G7221CKBPS',help='24KBPS,32KBPS or 48KBPS',default='48KBPS')
#   parser.add_argument('-L16 PayloadType',dest='pt',default='99')
   args= parser.parse_args()
   
   if "OPUS" in args.codec:   
    OpusMono_wav2rtpdump(args.wav,args.opusdtxflag)
   if "OPUSSTEREO" in args.codec: 
    OpusStereo_wav2rtpdump(args.stereowav,args.opusdtxflag)
   elif "L16" in args.codec:
    L16_wav2rtpdump(args.wav)
   elif "AMR-WB" in args.codec:
    amrwb_wav2rtpdump(args.wav,args.amrwbdtxflag,args.amrwb_format)
   elif "G.7221" in args.codec:
    G7221_wav2rtpdump(args.wav,args.G7221KBPS)
   elif "G.7221C" in args.codec:
    G7221C_wav2rtpdump(args.wav,args.G7221CKBPS)
   elif "G722" in args.codec:
    G722_wav2rtpdump(args.wav)
   elif "PCMA" in args.codec: 
    pcma_wav2rtpdump(args.wav)
   elif "PCMU" in args.codec:
    pcmu_wav2rtpdump(args.wav)







