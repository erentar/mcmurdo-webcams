ls -1d */ | xargs -I% git add "%"
git commit -m $(date -uI)
git push
