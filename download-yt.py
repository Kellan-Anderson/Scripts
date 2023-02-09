from pytube import YouTube
import sys

def main():
  if len(sys.argv) >= 4 or len(sys.argv) == 1:
    print("Usage download-yt <link> [path]")
    quit(1)
  
  link = sys.argv[1]
  if len(sys.argv) == 3:
    filePath = sys.argv[2]
  else:
    filePath = ""
  
  try:
    yt = YouTube(link).streams.first()
    yt.download(filePath)
    print(f"Sucessfully downloaded: {yt.title}")
  except:
    print("Error downloading video")
  

if __name__ == "__main__":
  main()

