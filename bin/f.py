import subprocess
dl = "https://builds.garudalinux.org/repos/chaotic-aur/x86_64/7&zip-3r.4.1-2-x86_64.pkg.tar.zst"
nm = dl.split('/')[-1]
snm = nm.split('-')
pkg = nm.split('-')[0]
pkg = pkg.replace('&', '-')
sb = subprocess.Popen(f"pacman -Si {pkg} | grep -Po '^Version\s*: \K.+'", shell=True, stdout=subprocess.PIPE)
sr = sb.stdout.read()
sr = sr.decode('utf-8')
sr = sr.replace('\n', '')
oldv = snm[1]+"-"+snm[2]
ndl = dl.replace(oldv, sr)
ndl = ndl.replace('&', '-')
print(ndl)