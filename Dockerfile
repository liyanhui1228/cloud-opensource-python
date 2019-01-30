FROM gcr.io/cloud-builders/git
RUN git clone https://source.developers.google.com/p/google.com:python-compatibility-dashboard/r/compatibility-dashboard && cd compatibility-dashboard && git checkout dashboard && echo "update" > trigger.txt && git add -A && git config user.email test@xxx.com && git config user.name BuildTrigger && git commit -m "update" && git push
