Travis CD setup

- Create repo
- Clone

```
git clone https://github.com/firedot/travis_cd.git
```

- Go in the repo dir

```
cd travis_cd/
```


- Create new Branch ```f-addHelloScript```

```
git checkout -b "f-addHelloScript"
```

- Create (or copy) ```hello.sh```

```
cp ../bashScript/hello.sh .
```
or ```touch hello.sh``` and paste the content below

```
#!/usr/bin/env bash

echo "hello"
```

- Check if ```hello.sh``` has execution permissions

```
ls -la
```
- Git add ```hello.sh```

```
git add hello.sh 
```

- Git commit -m " -m "added hello.sh which prints hello”

```
git commit -m "added hello.sh which prints hello"
```
- Git push 
```
git push —set-upstream origin f-addHelloScript
```
- Create pull request
- Merge
- Checkout to the master branch

```
git checkout master
```

- Pull the changes from Github into the master branch

```
git pull origin master
```
- Enable repo on Travis
- Create new branch ```ImplementTravis```

```
git checkout -b "ImplementTravis"
```


- Create ```.travis.yml```

```
touch .travis.yml
```

- Implement travis configuration with a test that always passes

```
sudo: required
script:
- exit 0
```
- Git add ```.travis.yml```

```
git add .travis.yml
```

- Git commit

```
git commit -m "Implemented Travis"
```

- Git push

```
git push --set-upstream origin ImplementTravis
```

- Create pull request
- Merge
-  Checkout to the master branch

```
git checkout master
```

- Pull the changes from GitHub into the master branch

```
git pull origin master
```

- Create new branch ```f-addTravisTests```

```
git checkout -b "f-addTravisTests"
```

- Create file ```test.sh```

```
touch test.sh
```

- Check if ```test.sh``` has execution permissions

```
ls -la test.sh
```

- Add a test that check the output from ```hello.sh```

```
#!/usr/bin/env bash
 output=$(bash hello.sh)
 if [ "${output}" == "hello" ]; then
  echo "GOOD: Test pass"
else
  echo "BAD: Test failed"
  exit 1
fi
```

- Git add ```test.sh```

```
git add test.sh

```

- Git commit 

```
git commit -m "added test script to be used by Travis"
```
- Git push

```
git push --set-upstream origin f-addTravisTests
```

- Create pull request
- Merge

- Checkout to master
```
git checkout master
```
- Pull changes from Github into the master branch
```
git pull origin master
```

- Create new branch ```addTestToTravis```

```
git checkout -b "addTestToTravis"
```

- Edit ```.travis.yml``` to use the tests from ```test.sh```

```
sudo: required
script:
- bash test.sh
```

-  Git add ```.travis.yml```

```
git add .travis.yml
```

- Git commit

```
git commit -m "Updated travis to use test.sh"
```

- Git push

```
git push --set-upstream origin addTestToTravis
```
- Checkout to master

```
git checkout master
```

-  Pull changes from Github into master branch

```
git pull origin master
```

- Create new branch ```updateTravis```
```
git checkout -b "updateTravis"
```

- Edit ```.travis.yml``` to implement releases to GitHub

```
sudo: required
script:
- bash test.sh
deploy:
  provider: releases
  api_key:
    secure: 2Q66cKH59vht0c7AriqF9sYvPDgeJPW0iihYSK4ThEZNgOs4mLoaUZHWNzMSwN4M3CNoahLJDyQG4MbgH1b7jMPcY2Zj8PMBGz3HEU2DOZTbI7Ex/S+rmpKm1zvNokrDEhbHXFi88Mo7T/W+Cf09Z2C2Pf1IizjBgZw5NIVxsiU9m1OvMYjeQfti7io1IRFpVsDgQ+AR0wqdCkQuNn7ZDavdslsDc2KsxNMnvxw19h4aG9Ia66Ax6fuGiEPfeyMXUiSabwWPQST8GlgjH0EmNJxnaKEC7SslvOhSoERhfvZ1riXP96ezjo8Zjs/IOcH2tERqwYOabx7JFfh4TAynEuytG1IYsO8xzgafqO6wSBq2UoKWrmV3/+edbs9gbq/8BuYgrJ5fytusDfFZZ+4fGZyzEVUkDZm83bXSO0t2yqmCjKqJ6ptI1+zB5fiChZDHfSk8AzY4GiARtcy55xLoabFfmwT4ia0RXcLEsOFNm4DqRjgo9z6tFXphCUolyuaFzMT30dzqmOgndgSLl3f0Iv507c4PJ5txamTq+Amlu/3oQZPkhiVRHCod4iIkSs5IqaLgqtbY3y+BSfhm9hnBrftx7LB5siLGmed0Q0kTtgaVvWYr28NLe0wvJtxEXDmK6IX6fcmYOpYPxToaGFSaspcYvuKE+BcGZ3dUizZasII=
  file: hello.sh
  on:
    repo: firedot/travis_cd
    tags: true
```

- Git add ```.travis.yml```

```
git add .travis.yml
```

- Git commit 
```
git commit -m "Updated .travis.yml to handle releases"
```

- Git push
```
git push --set-upstream origin updateTravis
```
- Checkout to master

```
git checkout master
```
- Pull the changes from GitHub to master

```
git pull origin master
```

- create new branch ```addDETAILED.md```

```
git checkout -b "addDETAILED.md
```
- git add thisfile (DETAILED.md)
```
git add DETAILED.md
```
- Git commit
```
git commit -m "added DETAILED.md"
```
- Git push
```
git push origin addDETAILED.md
```
- Create pull request
- Merge. 
