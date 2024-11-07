
# remember do "chmod +x git-clone.sh" before execute this script 
# chmod +x git-clone.sh && ./git-clone.sh

repo_slug="CRISOMG/dockerized-env.git"
# ssh_priv_key="-----BEGIN OPENSSH PRIVATE KEY-----
# TODO
# -----END OPENSSH PRIVATE KEY-----"
# echo "$ssh_priv_key" >> ~/.ssh/omg-media
# chmod 600 ~/.ssh/omg-media
# eval `ssh-agent -s`;
# ssh-add ~/.ssh/omg-media;
# git clone --recurse-submodules git@github.com:$repo_slug;

github_personal_access_toke="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"
repo_url="https://$github_personal_access_toke@github.com/$repo_slug"

git clone $repo_url ./;
git clone "https://$github_personal_access_toke@github.com/CRISOMG/onegroup-web.git" ./nuxt-app/app;
git clone "https://$github_personal_access_toke@github.com/CRISOMG/onegroup-api.git" ./express-api/api;
